import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  group("Flutter String length Count Test", (){
    //create instance of driver
    FlutterDriver driver;

    //connecting flutter driver to device
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    //if driver is still running after the execution of app close the driver
    tearDownAll((){
      if (driver != null) {
        driver.close();
      }
    });

    //finds text field
    var textField = find.byType('TextField');

    //finds count button
    var btn = find.text("Count");

    //text to be expected
    var count = find.text("5");

    //testing starts
    test("count letter in the string", () async {

      //taps the text field
      await driver.tap(textField);

      //waits for 2 sec
      await Future.delayed(Duration(seconds: 2));

      //enter text in the text field
      await driver.enterText("hello");

      //waits for 2 sec
      await Future.delayed(Duration(seconds: 2));

      //First the expected should be absent
      await driver.waitForAbsent(count);

      //taps the count button
      await driver.tap(btn);

      //waits for 2 sec
      await Future.delayed(Duration(seconds: 2));

      //wait for the count text widget to appear
      await driver.waitFor(count);

      //after execution no callbacks should happen
      await driver.waitUntilNoTransientCallbacks();

      //count text widget should not be null
      assert(count != null);
    });
  });
}