import 'package:flutter_test/flutter_test.dart';
import 'package:gsocapp/main.dart';
void main() {
     //testing a specific function
     test('String length should be displayed', (){

      //initial input
       String initial = "Hello";

       //passing the input to the function
      String count = getCharCount(initial).toString();

      //expecting the output according to the input provided
       expect(count, '5');
   });
}