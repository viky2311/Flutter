part of 'pages.dart';

class ArtikelPage extends StatefulWidget {
  ArtikelPage({Key key}) : super(key: key);

  @override
  _ArtikelPageState createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  SizeConfig sizeConfig = SizeConfig();

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: SizeConfig.blockSizeHorizontal * 100,
        height: SizeConfig.blockSizeVertical * 100,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/artikel/bgartikel.png'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            SizeConfig.blockSizeHorizontal * 5,
                                        vertical:
                                            SizeConfig.blockSizeVertical * 5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(builder: (_) {
                                                return PlayList();
                                              }),
                                            );
                                          },
                                          child: ClipRect(
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/yoga/Next-Button.png'),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Artikel',
                                          style: whiteFontStyle18,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          child: Text(
                                            'Lorem ipsum dolor sit \namet, consectetur \nadipiscing elit. ',
                                            style: blackFontStyle12,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image(
                                    image:
                                        AssetImage('assets/artikel/icon.png'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 30),
                  child: Container(
                    width: SizeConfig.blockSizeHorizontal * 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 8),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.blockSizeHorizontal * 60),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey[400],
                                      width:
                                          SizeConfig.blockSizeHorizontal * 1),
                                ),
                              ),
                              child: Text(
                                'Artikel terbaru',
                                style: blackFontStyle12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ArtikelMenu(),
                              ),
                            ),
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 10,
                              width: SizeConfig.blockSizeHorizontal * 90,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                  image: AssetImage("assets/yoga/lainnya.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            SizeConfig.blockSizeVertical * 3,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Cara Membakar Lemak Perut Dengan \nGerakan Yoga ',
                                            style: whiteFontStyle9,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              right: SizeConfig
                                                      .blockSizeHorizontal *
                                                  14),
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                            style: whiteFontStyle4,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal * 20,
                                      height: SizeConfig.blockSizeVertical * 20,
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.white,
                                        size: 50,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 3,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ArtikelMenu(),
                              ),
                            ),
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 10,
                              width: SizeConfig.blockSizeHorizontal * 90,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                  image: AssetImage("assets/yoga/lainnya.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            SizeConfig.blockSizeVertical * 3,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Cara Membakar Lemak Perut Dengan \nGerakan Yoga ',
                                            style: whiteFontStyle9,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              right: SizeConfig
                                                      .blockSizeHorizontal *
                                                  14),
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                            style: whiteFontStyle4,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal * 20,
                                      height: SizeConfig.blockSizeVertical * 20,
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.white,
                                        size: 50,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 3,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ArtikelMenu(),
                              ),
                            ),
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 10,
                              width: SizeConfig.blockSizeHorizontal * 90,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                  image: AssetImage("assets/yoga/lainnya.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            SizeConfig.blockSizeVertical * 3,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Cara Membakar Lemak Perut Dengan \nGerakan Yoga ',
                                            style: whiteFontStyle9,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              right: SizeConfig
                                                      .blockSizeHorizontal *
                                                  14),
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                            style: whiteFontStyle4,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal * 20,
                                      height: SizeConfig.blockSizeVertical * 20,
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.white,
                                        size: 50,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 3),
                          // ConstrainedBox(
                          //   constraints: BoxConstraints.tightFor(
                          //       width: SizeConfig.blockSizeHorizontal * 50,
                          //       height: SizeConfig.blockSizeVertical * 7),
                          //   child: ElevatedButton(
                          //     onPressed: () {},
                          //     child: Padding(
                          //       padding: EdgeInsets.symmetric(
                          //         vertical: SizeConfig.blockSizeVertical * 1.5,
                          //       ),
                          //       child: Center(
                          //         child: Text('Selanjutnya',
                          //             style: blackFontStyle14),
                          //       ),
                          //     ),
                          //     style: ButtonStyle(
                          //       backgroundColor:
                          //           MaterialStateProperty.all<Color>(
                          //               Colors.white),
                          //       shape: MaterialStateProperty.all<
                          //           RoundedRectangleBorder>(
                          //         RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(18.0),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical * 37),
                  child: Center(
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(2.0, 6.0),
                            blurRadius: 20.0)
                      ]),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                          hintText: 'Pencarian Senam Yoga untuk anda',
                          hintStyle: greyFontStyle14,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
