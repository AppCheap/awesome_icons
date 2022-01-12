import "package:flutter/widgets.dart";

class AwesomeIconData extends IconData {
  const AwesomeIconData(int codePoint)
      : super(
          codePoint,
          fontFamily: "FontAwesome5",
          fontPackage: "awesome_icons",
          matchTextDirection: true,
        );
}
