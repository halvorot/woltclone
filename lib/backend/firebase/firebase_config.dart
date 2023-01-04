import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCQvGSJ3NGD-4hU_59ebZ0v2N1XKMHQef4",
            authDomain: "wolt-5368d.firebaseapp.com",
            projectId: "wolt-5368d",
            storageBucket: "wolt-5368d.appspot.com",
            messagingSenderId: "826484636513",
            appId: "1:826484636513:web:018536e01835d272756320"));
  } else {
    await Firebase.initializeApp();
  }
}
