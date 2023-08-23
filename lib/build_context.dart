import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension GreatBuildContext on BuildContext {
  //________Media Query_______________________
  double get height {
    return MediaQuery.sizeOf(this).height;
  }

  double get width {
    return MediaQuery.sizeOf(this).width;
  }

  double get screenRatio {
    //Screen Ratio (height/width)
    return MediaQuery.sizeOf(this).height / MediaQuery.sizeOf(this).width;
  }

//___________Scaffold Messenger__________________
  void snackBarString(String msg) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

  void snackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void clearSnackBars(SnackBar snackBar) {
    ScaffoldMessenger.of(this).clearSnackBars();
  }

  void materialBanner(MaterialBanner materialBanner) {
    ScaffoldMessenger.of(this).showMaterialBanner(materialBanner);
  }

  void clearMaterialBanners(SnackBar snackBar) {
    ScaffoldMessenger.of(this).clearMaterialBanners();
  }
  //___________________ Navigator ____________________

  void materialPush(Widget page) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
  }

  void materialPushReplacement(Widget page) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  void materialPushRemoveUntil(Widget page,
      [bool Function(Route<dynamic> route)? predicate]) {
    Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      predicate ??
          (route) {
            return false;
          },
    );
  }

  void pop() {
    Navigator.of(this).pop();
  }

  void cupertinoPush(Widget page) {
    Navigator.of(this).push(CupertinoPageRoute(builder: (context) => page));
  }

  void cupertinoPushReplacement(Widget page) {
    Navigator.of(this)
        .pushReplacement(CupertinoPageRoute(builder: (context) => page));
    cupertinoPushRemoveUntil(page);
  }

  void cupertinoPushRemoveUntil(Widget page,
      [bool Function(Route<dynamic> route)? predicate]) {
    Navigator.of(this).pushAndRemoveUntil(
      CupertinoPageRoute(builder: (context) => page),
      predicate ??
          (route) {
            return false;
          },
    );
  }

  //___________Theme_________________
  TextTheme get themeText {
    return Theme.of(this).textTheme;
  }

  CardTheme get themeCard {
    return Theme.of(this).cardTheme;
  }

  DatePickerThemeData get themeDatePicker {
    return Theme.of(this).datePickerTheme;
  }
}
