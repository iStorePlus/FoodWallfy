import 'package:foodwallfy/db/DBManager.dart';
import 'package:foodwallfy/db/edit.dart';
import 'package:foodwallfy/db/read.dart';
import 'package:foodwallfy/services/caller.dart';
import 'package:foodwallfy/services/connectionStatus.dart';
import 'package:foodwallfy/services/responses.dart';

class ServiceManager {
  final EditDB editDB = EditDB();
  final ServiceCaller _sc = ServiceCaller();

  Future<List<GradientData>> fetchGradients() async {
    GradientResponse gradients;
    try {
      ConnectionStatus connectionStatus = ConnectionStatus.getInstance();
      bool isOnline = await connectionStatus.checkConnection();
      if (isOnline) gradients = await _sc.fetchGradients();
      // if (gradients.gradients != null && gradients.gradients.length > 0)
      //   // print(gradients.gradients.length);
      //   await Future.forEach(gradients.gradients, (gradient) async {
      //     // print(gradient.toString());
      //     await editDB.saveGradients(gradient);
      //   });
      return gradients.gradients;
      // return await _readDB.getGradients();
    } catch (e) {
      throw e;
    }
  }
}
