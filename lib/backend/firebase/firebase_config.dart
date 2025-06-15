import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBDSi5CwrCF01mnviqr-j-QqM0qu_OU8N8",
            authDomain: "storza-mygrcx.firebaseapp.com",
            projectId: "storza-mygrcx",
            storageBucket: "storza-mygrcx.firebasestorage.app",
            messagingSenderId: "433981900087",
            appId: "1:433981900087:web:17d4df44fed8600ca786b2"));
  } else {
    await Firebase.initializeApp();
  }
}
