<<<<<<< HEAD

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

//Creating instances of FirebaseAuth and GoogleSignIn
=======
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

>>>>>>> 2b106893120bedf12738d26011979e57c975bfac
final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<String> signInWithGoogle() async {
<<<<<<< HEAD
=======
  await Firebase.initializeApp();

>>>>>>> 2b106893120bedf12738d26011979e57c975bfac
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

<<<<<<< HEAD
  final AuthCredential credential = GoogleAuthProvider.getCredential(
=======
  final AuthCredential credential = GoogleAuthProvider.credential(
>>>>>>> 2b106893120bedf12738d26011979e57c975bfac
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

<<<<<<< HEAD
  final UserCredential authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser;
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle succeeded: $user';
}

void signOutGoogle() async{
  await googleSignIn.signOut();

  print("User Sign Out");
}

/*class CustomSignInGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(right: 5),
              constraints: BoxConstraints(maxHeight: 40),
              child: Image.asset('assests/Images/google_logo.png',
                  fit: BoxFit.cover)),
          Text(
            'Sign-in with Google',
            style: TextStyle(color: Colors.teal, fontSize: 15),
          )
        ],
      ),
    );
  }
}*/
=======
  final UserCredential authResult =
      await _auth.signInWithCredential(credential);
  final User user = authResult.user;

  if (user != null) {
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final User currentUser = _auth.currentUser;
    assert(user.uid == currentUser.uid);

    print('signInWithGoogle succeeded: $user');

    return '$user';
  }

  return null;
}

Future<void> signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Signed Out");
}
>>>>>>> 2b106893120bedf12738d26011979e57c975bfac
