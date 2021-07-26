part of 'shared.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

Color mainColor = _colorFromHex('edf6f9');
Color greyColor = _colorFromHex('f4f3ee');
Color blackColor = _colorFromHex('000000');
Color yogaColor = _colorFromHex('D8F3DC');
Color musicColor = _colorFromHex('EDE0D4');
Color questColor = _colorFromHex('2B91B2');

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle36 = GoogleFonts.poppins().copyWith(
    color: Colors.black,
    fontSize: SizeConfig.blockSizeHorizontal * 8,
    fontWeight: FontWeight.bold);
TextStyle blackFontStyle27 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 27, fontWeight: FontWeight.bold);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle = GoogleFonts.poppins().copyWith(
    color: Colors.black,
    fontSize: SizeConfig.blockSizeHorizontal * 4,
    fontWeight: FontWeight.w500);
TextStyle blackFontStyle12 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500);
TextStyle blackFontStyle14 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);
TextStyle whiteFontStyle1 = GoogleFonts.poppins().copyWith(
    color: Colors.white,
    fontSize: SizeConfig.blockSizeHorizontal * 4,
    fontWeight: FontWeight.w500);
TextStyle yellowFontStyle1 = GoogleFonts.poppins().copyWith(
    color: Colors.yellow.shade900, fontSize: 18, fontWeight: FontWeight.w500);
TextStyle whiteFontStyle12 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500);
TextStyle whiteFontStyle9 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold);
TextStyle whiteFontStyle4 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 4, fontWeight: FontWeight.w500);
TextStyle whiteFontStyle18 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900);
TextStyle yellowFontStyle12 = GoogleFonts.poppins().copyWith(
    color: Colors.yellow.shade900, fontSize: 12, fontWeight: FontWeight.w500);
TextStyle musicFontStyle12 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500);
TextStyle blueFontStyle = GoogleFonts.poppins().copyWith(
    color: Colors.blue[200], fontSize: 18, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(color: Colors.black);

TextStyle onBoardTitle = GoogleFonts.poppins().copyWith(
  color: Colors.black,
  fontSize: SizeConfig.blockSizeHorizontal * 8,
  fontWeight: FontWeight.bold,
);
TextStyle onBoardSubtitle = GoogleFonts.poppins().copyWith(
  color: Colors.grey.shade400,
  fontSize: SizeConfig.blockSizeHorizontal * 4,
  fontWeight: FontWeight.w500,
);
TextStyle greyFontStyle2 = GoogleFonts.poppins().copyWith(
    color: Colors.grey.shade400,
    fontSize: SizeConfig.blockSizeHorizontal * 4,
    fontWeight: FontWeight.w500);
TextStyle greyFontStyle14 = GoogleFonts.poppins().copyWith(
    color: Colors.grey.shade400, fontSize: 14, fontWeight: FontWeight.w500);
const double defaultMargin = 24;

final ButtonStyle raisedButtonStyle =
    ElevatedButton.styleFrom(padding: EdgeInsets.all(20));

// class AppTheme {
//   static final light = ThemeData(
//     brightness: Brightness.light,
//     accentColor: Colors.red,
//     disabledColor: Colors.grey.shade400,
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//   );

//   static final dark = ThemeData(
//     brightness: Brightness.dark,
//     accentColor: Colors.red,
//     disabledColor: Colors.grey.shade400,
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//   );
// }
