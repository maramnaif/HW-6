import 'package:get_it/get_it.dart';
import 'package:hw6_maram_alharthi/controller/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;

Future<void> setup() async {
  // just for initilize the SharedPreferences on our app, and this we will use it just one time on start of the app

  prefs = await SharedPreferences.getInstance();

  // just for initilize the get it on our app, and this we will use it just one time on start of the app
  GetIt.instance;

  //access to single object throw all the app, from any where, with the same state and data
  GetIt.I.registerSingleton<UserData>(UserData());
}
