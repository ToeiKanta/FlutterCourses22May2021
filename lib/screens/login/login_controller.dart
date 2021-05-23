import 'package:get/get.dart';

class LoginController extends GetxController {
  String title1 = "title1";
  var title2 = RxString('"title2"');

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 5)).then((value) {
      print("delay success");
      title1 = "12123";
      title2.value = "คนบ้า";
      update();
    });
  }
}
