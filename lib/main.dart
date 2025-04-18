import 'package:chatapp/routes/app_routes.dart';

import 'package:chatapp/constant/constant.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool shouldUseFirebaseEmulator = false;

// late final FirebaseApp app;
// late final FirebaseAuth auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  constant.prefs = await SharedPreferences.getInstance();

  // if (kIsWeb) {
  // app = await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyAUlzbXst1ZHLVsf3aJgwYx392kBPrJyrg",
  //         authDomain: "chatapp-3f335.firebaseapp.com",
  //         projectId: "chatapp-3f335",
  //         storageBucket: "chatapp-3f335.appspot.com",
  //         messagingSenderId: "225156356600",
  //         appId: "1:225156356600:web:04556fc30fb0aab34c9e0d",
  //         measurementId: "G-52B52LCW3Q"));
  // } else {
  //   app = await Firebase.initializeApp(
  //       options: DefaultFirebaseOptions.currentPlatform);
  // }
  // auth = FirebaseAuth.instanceFor(app: app);

  // if (shouldUseFirebaseEmulator) {
  //   await auth.useAuthEmulator('localhost', 9099);
  // }
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: constant.primary,
      systemNavigationBarColor: const Color.fromARGB(0, 255, 255, 255),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        return child!;
      },
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.appRouter,
      darkTheme: ThemeData.dark(),
    );

    // MaterialApp(
    //   home: FutureBuilder<String>(
    //     future: customSharePreference().readData('logIn'),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return const Center(child: CircularProgressIndicator());
    //       } else if (snapshot.hasError) {
    //         return const Center(child: Text('Error loading preferences'));
    //       } else {
    //         final log = snapshot.data ?? '';
    //         return MyAppWithRouter(logInfo: log);
    //       }
    //     },
    //   ),
    //   debugShowCheckedModeBanner: false,
    // );
  }
}

// class MyAppWithRouter extends StatelessWidget {
//   final String logInfo;
//   MyAppWithRouter({super.key, required this.logInfo});

//   @override
//   Widget build(BuildContext context) {
//     Routes(log: logInfo);
   
//   }
// }
