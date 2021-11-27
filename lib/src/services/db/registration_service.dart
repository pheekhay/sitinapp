import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sitinapp/src/models/sitin_user.dart';

abstract class RegistationService {
  static Future<Customer> signInAnonymously() async {
    final credential = await FirebaseAuth.instance.signInAnonymously();

    return Customer(id: credential.user!.uid, name: null, isAnonymous: true);
  }

  static Future<Customer> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      signInOption: SignInOption.standard,
      scopes: ['email', 'profile'],
      hostedDomain: "",
      clientId: "",
    ).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    final userCredentials =
        await FirebaseAuth.instance.signInWithCredential(credential);
    return Customer(
        id: userCredentials.user!.uid,
        name: userCredentials.user!.displayName!,
        email: userCredentials.additionalUserInfo?.profile?["email"]);
  }

  static Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }
}
