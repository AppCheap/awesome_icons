import "package:flutter/widgets.dart";

class FontAwesome5Free extends IconData {
  const FontAwesome5Free(int codePoint)
      : super(
          codePoint,
          fontFamily: 'FontAwesome5Free',
          fontPackage: "awesome_icons",
          matchTextDirection: false,
        );
}

class FontAwesome5Brands extends IconData {
  const FontAwesome5Brands(int codePoint)
      : super(
          codePoint,
          fontFamily: 'FontAwesome5Brands',
          fontPackage: "awesome_icons",
          matchTextDirection: false,
        );
}

class FontAwesome5FreeSolid extends IconData {
  const FontAwesome5FreeSolid(int codePoint)
      : super(
          codePoint,
          fontFamily: 'FontAwesome5FreeSolid',
          fontPackage: "awesome_icons",
          matchTextDirection: false,
        );
}
