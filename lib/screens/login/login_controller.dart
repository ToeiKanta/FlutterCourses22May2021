import 'package:example_flutter1/enums/language.dart';
import 'package:example_flutter1/models/user_model.dart';
import 'package:example_flutter1/services/user_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final UserService userService;
  var languageSelected = Rx<Language>(Language.th);
  LoginController(this.userService);

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> onSubmit() async {
    try {
      UserModel user = await getUser(); // call service
      gotoHome(user);
    } catch (error) {
      print("getUser: $error");
    }
  }

  void gotoHome(UserModel user) {
    Get.toNamed('/home', arguments: {
      "name": user.name,
      "email": user.email,
    });
  }

  Future<UserModel> getUser() async {
    UserModel user = await userService.getUser();
    return user;
  }

  String getImagePathLanguage(Language language) {
    return language == Language.th
        ? "assets/thai-flag.png"
        : "assets/eng-flag.png";
  }

  setLanguageSelected(Language language) {
    this.languageSelected.value = language;
  }
}
