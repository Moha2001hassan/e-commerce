import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'firebase_options.dart';
import 'utils/routing/app_router.dart';

Future<void> main() async {
  // Add Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();
  // Init Local Storage
  // Init Payment Method
  // Await Native splash screen
  // Init Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Init Authentication

  // Load all the Material Design/ Themes/ Localization/ Binding
  runApp(App(appRouter: AppRouter()));
}
