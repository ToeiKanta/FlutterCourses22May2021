import 'package:get/get.dart';

class LoginController extends GetxController {
  String title1 = "title1";
  String title4 = "title1";
  var title2 = RxString('"title2"');
  var title3 = RxString('"title3"');

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 5)).then((value) {
      print("delay success");
      title1 = "12123";
      title2.value = "คนบ้า";
      update();
    });
  }
}
