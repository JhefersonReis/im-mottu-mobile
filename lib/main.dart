import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:im_mottu_mobile/src/database/database.dart';
import 'package:im_mottu_mobile/src/dependencies.dart';

import 'src/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencies();
  await GetIt.I<Database>().initialize();

  runApp(const MyApp());
}
