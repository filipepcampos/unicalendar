import '../lib/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:uni/controller/local_storage/app_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni/model/home_page_model.dart';

void main() {
  // This line enables the extension
  enableFlutterDriverExtension();
  
  SharedPreferences.setMockInitialValues({ // Setup default state for tests
    'user_number': '',
    'user_password': '',
    'favorite_cards': AppSharedPreferences.defaultFavoriteCards.map(
              (a) => a.index.toString()).toList(),
  });

  // Call the `main()` function of your app or call `runApp` with any widget you
  // are interested in testing.
  runApp(MyApp());
}