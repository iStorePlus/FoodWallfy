import 'package:foodwallfy/services/caller.dart';
import 'package:foodwallfy/services/connectionStatus.dart';
import 'package:foodwallfy/services/responses.dart';

class ServiceManager {
  final ServiceCaller _sc = ServiceCaller();

  Future<List<Result>> fetchWalls({int perPage}) async {
    Food food;
    try {
      ConnectionStatus connectionStatus = ConnectionStatus.getInstance();
      bool isOnline = await connectionStatus.checkConnection();
      if (isOnline) food = await _sc.fetchWalls(perPage: perPage);
      return food.results;
    } catch (e) {
      throw e;
    }
  }
}
