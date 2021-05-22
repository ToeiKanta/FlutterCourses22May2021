import 'package:example_flutter1/models/user_model.dart';

class UserService {
  Future<UserModel> getUser() async {
    return await Future.delayed(Duration(milliseconds: 500), () {
      return UserModel(
        fname: "บุญส่ง",
        lname: "สีทอง",
      );
    });
  }
}
