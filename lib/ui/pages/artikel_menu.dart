part of 'pages.dart';

class ArtikelMenu extends StatelessWidget {
  ArtikelMenu({Key key}) : super(key: key);
  SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/artikel/bgartikel.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockSizeVertical * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ArtikelPage(),
                      ),
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: SizeConfig.safeBlockHorizontal * 8,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage('assets/artikel/menu.png'),
                ),
                Text(
                  'Manfaat Meditasi untuk Kesehatan dan \nCara Melakukannya',
                  style: whiteFontStyle12,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal * 90,
              child: Column(
                children: [
                  Text(
                    'Manfaat meditasi tidak hanya sebatas kesehatan fisik, tetapi juga kesehatan mental Selain menghilangkan stres dan membuat Anda lebih rileks, ada beragam manfaat meditasi lain yang dapat diperoleh, jika Anda melakukannya secara rutin.',
                    style: whiteFontStyle12,
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 2,
                  ),
                  Text(
                    'Manfaat meditasi tidak hanya sebatas kesehatan fisik, tetapi juga kesehatan mental Selain menghilangkan stres dan membuat Anda lebih rileks, ada beragam manfaat meditasi lain yang dapat diperoleh, jika Anda melakukannya secara rutin.',
                    style: whiteFontStyle12,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
