import 'package:dio/dio.dart';
import 'package:foodwallfy/constants/frazile.dart';
import 'package:foodwallfy/services/responses.dart';

class ServiceCaller {
  final Dio _dio = Dio();

  Future<Food> fetchWalls() async {
    Food food;
    try {
      // var result = await _loadGradientAsset();
      // String url = Frazile.baseURL + Frazile.foodURL;
      var result = await _dio.get(
        Frazile.baseURL,
        queryParameters: {
          "client_id": Frazile.clientId,
          "query": Frazile.query,
          "per_page": Frazile.perPage,
          "orientation": Frazile.orientation,
        },
      );
      food = Food.fromJson(result.data);
      return food;
    } on DioError catch (error) {
      String er = Frazile().getErrorMessage(error);
      throw er;
    }
  }

  // Future<String> _loadGradientAsset() async {
  //   return await rootBundle.loadString('assets/data/gradients.json');
  // }
}
