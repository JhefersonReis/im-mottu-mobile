import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:im_mottu_mobile/src/database/database.dart';
import 'package:im_mottu_mobile/src/dependencies.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'src/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  setupDependencies();
  await GetIt.I<Database>().initialize();

  runApp(const MyApp());
}
