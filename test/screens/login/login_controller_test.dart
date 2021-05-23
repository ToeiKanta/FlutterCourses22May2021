import 'dart:convert';

import 'package:example_flutter1/enums/language.dart';
import 'package:example_flutter1/models/user_model.dart';
import 'package:example_flutter1/screens/login/login_controller.dart';
import 'package:example_flutter1/services/user_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_controller_test.mocks.dart';

@GenerateMocks([UserService])
main() {
  group("test getImagePathLanguage function", () {
    var mockUserService = MockUserService();
    var controller = LoginController(mockUserService);
    test("should retrun flag th", () {
      var actual = controller.getImagePathLanguage(Language.th);
      expect(actual, "assets/thai-flag.png");
    });
    test("should retrun flag en", () {
      var actual = controller.getImagePathLanguage(Language.en);
      expect(actual, "assets/eng-flag.png");
    });
  });
  group("test setLanguageSelected function", () {
    var mockUserService = MockUserService();
    var controller = LoginController(mockUserService);
    test("check languageSelected.value = th", () {
      controller.setLanguageSelected(Language.th);
      expect(controller.languageSelected.value, Language.th);
    });
    test("check languageSelected.value = en", () {
      controller.setLanguageSelected(Language.en);
      expect(controller.languageSelected.value, Language.en);
    });
  });

  test("onSubmit", () async {
    var mockUserService = MockUserService();
    var controller = LoginController(mockUserService);
    var userInfo = {
      "id": 1,
      "name": "Leanne Graham",
      "username": "Bret",
      "email": "Sincere@april.biz",
      "address": {
        "street": "Kulas Light",
        "suite": "Apt. 556",
        "city": "Gwenborough",
        "zipcode": "92998-3874",
        "geo": {"lat": "-37.3159", "lng": "81.1496"}
      },
      "phone": "1-770-736-8031 x56442",
      "website": "hildegard.org",
      "company": {
        "name": "Romaguera-Crona",
        "catchPhrase": "Multi-layered client-server neural-net",
        "bs": "harness real-time e-markets"
      }
    };
    when(mockUserService.getUser())
        .thenAnswer((_) => Future.value(UserModel.fromJson(userInfo)));
    await controller.onSubmit();
  });
}
