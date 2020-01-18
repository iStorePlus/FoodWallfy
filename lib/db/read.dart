import 'package:foodwallfy/constants/frazile.dart';
import 'package:foodwallfy/db/DBManager.dart';
import 'package:foodwallfy/services/responses.dart';

class ReadDB {
  // Select Gradients from DB
  Future<List<GradientData>> getGradients() async {
    var rows = await DBManager.db.query(Frazile.gradientTB);
    if (rows != null && rows.length > 0)
      return rows.isNotEmpty
          ? rows.map((gradient) => GradientData.fromJson(gradient)).toList()
          : [];
    return [];
  }
}
