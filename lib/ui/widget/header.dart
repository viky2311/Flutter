part of '../pages/pages.dart';

class Header extends StatelessWidget {
  final SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.blockSizeVertical * 3,
          horizontal: SizeConfig.blockSizeHorizontal * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Selamat Datang !",
            style: blackFontStyle36,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 3,
          ),
          Text(
            "Explore the app, Find some peace of mind and some sport for your healthy.",
            style: whiteFontStyle1,
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 3),
        ],
      ),
    );
  }
}

class HeaderBack extends StatelessWidget {
  final SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () => print('Skip'),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => print('Skip'),
                    child: Text(
                      'Skip',
                      style: greyFontStyle2,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HeaderPlayList extends StatelessWidget {
  final SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.blockSizeVertical * 3,
        horizontal: SizeConfig.blockSizeHorizontal * 9,
      ),
      child: Row(
        children: <Widget>[
          Text(
            "Let's Go !",
            style: blackFontStyle36,
          ),
        ],
      ),
    );
  }
}

class HeaderOlahraga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                "Olahraga Ringan",
                style: blackFontStyle36,
                textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Memuat  beragam macam olahraga ringan, yang menjaga kesehatan badan tiap saat",
            style: greyFontStyle14,
          ),
        ],
      ),
    );
  }
}
