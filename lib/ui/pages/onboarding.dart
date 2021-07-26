part of 'pages.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final int _numpages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numpages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 10.0,
      width: isActive ? 10.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Color(0xFF050505),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(color: Colors.white
              // gradient: LinearGradient(
              ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.blockSizeVertical * 4),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => print('Skip'),
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.grey,
                        size: SizeConfig.safeBlockHorizontal * 8,
                      ),
                    ),
                    TextButton(
                      onPressed: () => print('Skip'),
                      child: Text(
                        'Skip',
                        style: greyFontStyle2,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: SizeConfig.safeBlockVertical * 70,
                        child: PageView(
                          physics: ClampingScrollPhysics(),
                          controller: _pageController,
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.blockSizeVertical * 4,
                                horizontal: SizeConfig.blockSizeHorizontal * 6,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  Text('Lorem Ipsum dolor.',
                                      style: onBoardTitle),
                                  SizedBox(
                                      height: SizeConfig.blockSizeVertical * 3),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.',
                                    style: onBoardSubtitle,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: SizeConfig.blockSizeVertical * 1),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/onboarding/meeting.gif'),
                                        height:
                                            SizeConfig.blockSizeVertical * 40,
                                        width:
                                            SizeConfig.blockSizeHorizontal * 60,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.blockSizeVertical * 4,
                                horizontal: SizeConfig.blockSizeHorizontal * 6,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            SizeConfig.blockSizeHorizontal * 4),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/onboarding/meeting.gif'),
                                        height:
                                            SizeConfig.blockSizeVertical * 40,
                                        width:
                                            SizeConfig.blockSizeHorizontal * 60,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text('Lorem Ipsum dolor.',
                                      style: onBoardTitle),
                                  SizedBox(height: 15.0),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.',
                                    style: onBoardSubtitle,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.blockSizeVertical * 3,
                                horizontal: SizeConfig.blockSizeHorizontal * 6,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  Text('Lorem Ipsum dolor.',
                                      style: onBoardTitle),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 3,
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.',
                                    style: onBoardSubtitle,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.blockSizeHorizontal * 3,
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/onboarding/meeting.gif'),
                                        height:
                                            SizeConfig.blockSizeVertical * 40,
                                        width:
                                            SizeConfig.blockSizeHorizontal * 60,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.safeBlockHorizontal * 3,
                      vertical: SizeConfig.blockSizeVertical * 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: _buildPageIndicator(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ButtonTheme(
                              height: SizeConfig.safeBlockVertical * 20,
                              child: ElevatedButton(
                                onPressed: _currentPage == _numpages - 1
                                    ? () => Navigator.of(context)
                                            .pushReplacement(
                                                MaterialPageRoute(builder: (_) {
                                          return QuestPage();
                                        }))
                                    : () => _pageController.nextPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                              SizeConfig.blockSizeVertical * 1,
                                          horizontal:
                                              SizeConfig.blockSizeHorizontal *
                                                  3),
                                      child: Text(
                                          _currentPage == _numpages - 1
                                              ? 'Get Started'
                                              : 'Selanjutnya',
                                          textAlign: TextAlign.center,
                                          style: whiteFontStyle1),
                                    ),
                                  ],
                                ),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
