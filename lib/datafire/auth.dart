
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future signup(String email, String password, String username) async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future Signin(String email, String password) async {
    UserCredential userCredential =
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  void SignOut() {
    auth.signOut();
  }
}
