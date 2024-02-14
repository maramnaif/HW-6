import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw6_maram_alharthi/screens/home_screen.dart';
import 'package:hw6_maram_alharthi/utils/setup.dart';
import 'package:hw6_maram_alharthi/widgets/text_field_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final locater = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
