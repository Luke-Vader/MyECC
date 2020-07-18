import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_ecc/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map((FirebaseUser user) => _firebaseUser(user));
  }

  //mapping firebase user to custom user
  User _firebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //signin
  Future signInEmail() async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: null, password: null);
      return result;
    }
    catch(e) {
      print(e.toString());
    }
  }

  //signout
  Future signOut() async {
    try{
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

}