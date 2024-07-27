import 'package:flutter/material.dart';

class MyHelperFunctions {
  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static Color? getColor(String value){
    switch(value){
      case 'Green': return Colors.green;
      case 'Red': return Colors.red;
      case 'Blue': return Colors.blue;
      case 'Pink': return Colors.pink;
      case 'Grey': return Colors.grey;
      case 'Purple': return Colors.purple;
      case 'Black': return Colors.black;
      case 'White': return Colors.white;
      case 'Yellow': return Colors.yellow;
      case 'Orange': return Colors.orange;
      case 'Brown': return Colors.brown;
      case 'Teal': return Colors.teal;
      default: return null;
    }
  }
}
