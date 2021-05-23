import 'package:get/get.dart';

class LoginController extends GetxController {
  String title1 = "title 1";
  String title2 = "title 2";
  var title3 = RxString('title 3');
  var title4 = RxString('title 4');

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 5)).then((value) {
      print("delay success");
      title1 = "12123";
      title3.value = "คนบ้า";
      update();
    });
  }
}
