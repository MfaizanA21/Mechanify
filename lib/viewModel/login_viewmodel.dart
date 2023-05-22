import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../model/login_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

// class LoginViewModel extends ChangeNotifier {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   late RegisteredAccounts _registeredAccounts;
//
//   RegisteredAccounts get registeredAccounts => _registeredAccounts;
//   bool get isAuthenticated => _registeredAccounts != null;
//
//   Future<String?> signUp(String email, String password) async {
//     try {
//       final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//           email: email,
//           password: password
//       );
//       final RegisteredAccounts registeredAccounts = userCredential.user as RegisteredAccounts;
//       _registeredAccounts = RegisteredAccounts(email: registeredAccounts.email, password: registeredAccounts.password);
//       notifyListeners();
//       return registeredAccounts.email;
//     }
//     catch (e) {
//       return null;
//     }
//
//
//     // on FirebaseAuthException catch(e){
//     //   if(e.code == "invalid-email" || e.code == "user-disabled" || e.code == "user-not-found" || e.code == "wrong password") {
//     //     Fluttertoast.showToast(
//     //         msg: 'Error: ${e.code}',
//     //             toastLength: Toast.LENGTH_LONG,
//     //             gravity: ToastGravity.BOTTOM,
//     //             fontSize: 16.0
//     //     );
//     //   }
//     //   else
//     //     return null;
//     //
//     // }
//   }
//
// }

