import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_mart/Provider/login_user_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController {
  LoginUserProvider loginUserProvider = LoginUserProvider();

  Future<User?> googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);
      loginUserProvider.addUserData(
        currentUser: user,
        userEmail: user?.email,
        userImage: user?.photoURL,
        userName: user?.displayName,
      );
      return user;
    } catch (e) {}
  }
}
