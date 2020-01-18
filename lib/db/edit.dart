import 'package:foodwallfy/constants/frazile.dart';
import 'package:foodwallfy/db/DBManager.dart';
import 'package:foodwallfy/services/responses.dart';

class EditDB {
  // Insert Values in Gradients Table
  Future<int> saveGradients(GradientData gradients) async {
    int result =
        await DBManager.db.insert(Frazile.gradientTB, gradients.toJson());
    return result;
  }

  // Update Values in Gradients Table
  Future<bool> updateGradient(GradientData gradient) async {
    var updateRow = await DBManager.db.update(
        Frazile.gradientTB, gradient.toJson(),
        where: 'id = ?', whereArgs: [gradient.id]);
    return updateRow > 0 ? true : false;
  }
}
