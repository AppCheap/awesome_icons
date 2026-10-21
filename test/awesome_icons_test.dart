import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('brand icons retain their package font metadata', () {
    expect(FontAwesomeIcons.facebook.fontFamily, 'FontAwesome5Brands');
    expect(FontAwesomeIcons.facebook.fontPackage, 'awesome_icons');
    expect(fontAwesomeIcons['fab-facebook'], FontAwesomeIcons.facebook);
  });

  test('regular and solid variants use the correct font families', () {
    expect(FontAwesomeIcons.star.fontFamily, 'FontAwesome5Free');
    expect(FontAwesomeIcons.solidStar.fontFamily, 'FontAwesome5FreeSolid');
    expect(fontAwesomeIcons['far-star'], FontAwesomeIcons.star);
    expect(fontAwesomeIcons['fas-star'], FontAwesomeIcons.solidStar);
  });
}
