import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const KuserToken = 'usertoken';


class UserAuth extends GetxService {
  String _tokan;

  GetStorage storage = GetStorage();

  void setUserToken(String value) {
    storage.write(KuserToken, value);
  }

  String getUserToken() {
    return storage.read(KuserToken);
  }

  void signout() {
  }

}
