part of 'pages.dart';

class PlayList extends StatefulWidget {
  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  final SizeConfig sizeConfig = SizeConfig();

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.blue[500], Colors.blue[300], Colors.blue[200]]),
        ),
        //Olahraga
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.blockSizeVertical * 6,
            ),
            HeaderPlayList(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OlahragaItem()),
                );
              },
              child: Container(
                height: SizeConfig.safeBlockVertical * 25,
                child: Card(
                  color: Colors.red[200],
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1,
                      horizontal: SizeConfig.blockSizeHorizontal * 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 80,
                    child: Padding(
                      padding:
                          EdgeInsets.all(SizeConfig.blockSizeHorizontal * 3),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(
                                      SizeConfig.blockSizeHorizontal * 1),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: SizeConfig
                                                      .blockSizeHorizontal *
                                                  2,
                                            ),
                                            child: Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Column(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: SizeConfig
                                                                  .blockSizeHorizontal *
                                                              17),
                                                      child: Text(
                                                        '231 tutorial',
                                                        style: whiteFontStyle12,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: SizeConfig
                                                              .blockSizeVertical *
                                                          9,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: SizeConfig
                                                                  .blockSizeHorizontal *
                                                              2),
                                                      child: Text(
                                                        'Olahraga Ringan',
                                                        style: whiteFontStyle1,
                                                      ),
                                                    )
                                                  ],
                                                )),
                                          ),
                                          SizedBox(
                                            height:
                                                SizeConfig.blockSizeHorizontal *
                                                    2,
                                          ),
                                          olahragaIcon(),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //  Text(snapshot.data[index]['type'],
            //                       style: blackFontStyle14),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => YogaPage()),
                );
              },
              child: Container(
                height: SizeConfig.safeBlockVertical * 25,
                child: Card(
                  color: Colors.teal.shade200,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 80,
                    child: Padding(
                      padding:
                          EdgeInsets.all(SizeConfig.blockSizeHorizontal * 3),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(
                                      SizeConfig.blockSizeHorizontal * 1),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          jumlahItemYoga(),
                                          SizedBox(
                                            height:
                                                SizeConfig.blockSizeHorizontal *
                                                    2,
                                          ),
                                          yogaIcon(),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MusicPage()),
                );
              },
              child: Container(
                height: SizeConfig.safeBlockVertical * 25,
                child: Card(
                  color: Colors.yellow.shade50,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 80,
                    child: Padding(
                      padding:
                          EdgeInsets.all(SizeConfig.blockSizeHorizontal * 3),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(
                                      SizeConfig.blockSizeHorizontal * 1),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          jumlahItemMeditasi(),
                                          SizedBox(
                                            height:
                                                SizeConfig.blockSizeHorizontal *
                                                    2,
                                          ),
                                          meditasiIcon(),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget jumlahItemYoga() {
  return Padding(
    padding: EdgeInsets.only(
      left: SizeConfig.blockSizeHorizontal * 4,
    ),
    child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2),
              child: Text(
                '231 tutorial',
                style: whiteFontStyle12,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 9,
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 5),
              child: Text(
                'Yoga',
                style: whiteFontStyle1,
              ),
            )
          ],
        )),
  );
}

Widget jumlahItemMeditasi() {
  return Padding(
    padding: EdgeInsets.only(
      left: SizeConfig.blockSizeHorizontal * 4,
      top: SizeConfig.blockSizeVertical * 1,
    ),
    child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 4),
              child: Text(
                '231 tutorial',
                style: yellowFontStyle12,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 9,
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 2),
              child: Text(
                'Meditasi',
                style: yellowFontStyle1,
              ),
            )
          ],
        )),
  );
}

Widget olahragaIcon() {
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 15),
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage('assets/iconOlahraga.png'),
          )
        ],
      ),
    ),
  );
}

Widget yogaIcon() {
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.blockSizeHorizontal * 18,
          top: SizeConfig.blockSizeVertical * 2),
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage('assets/iconYoga.png'),
            height: SizeConfig.blockSizeVertical * 15,
            width: SizeConfig.blockSizeHorizontal * 30,
          )
        ],
      ),
    ),
  );
}

Widget meditasiIcon() {
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.blockSizeHorizontal * 21,
      ),
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage('assets/iconMeditasi.png'),
            height: SizeConfig.blockSizeVertical * 15,
            width: SizeConfig.blockSizeHorizontal * 25,
          )
        ],
      ),
    ),
  );
}
