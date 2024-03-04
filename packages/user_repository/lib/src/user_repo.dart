import 'models/models.dart';

abstract class UserRepository {
  Stream<MyUser?> get user;
  Future<MyUser> signUp(MyUser myUser, String password);
  Future<void> setUserData(MyUser user);
  Future<void> signIn (String email, String password);
  Future<void> logOut();
}

// you dont implement these methods in the abstract class. You implement these methods within the firebase_user_repo class