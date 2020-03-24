// In this file we tell the code which app to test

import 'package:flutter_driver/driver_extension.dart';
import 'package:gsocapp/main.dart' as app;

void main(){
  //enables flutter driver
  enableFlutterDriverExtension();
  //searches for main function in the main.dart file to start testing
  app.main();
}