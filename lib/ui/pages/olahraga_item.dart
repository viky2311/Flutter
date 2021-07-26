part of 'pages.dart';

class Jongkok extends StatefulWidget {
  @override
  JongkokState createState() => JongkokState();
}

class JongkokState extends State<Jongkok> with TickerProviderStateMixin {
  AnimationController controller;

  // bool isPlaying = false;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(minutes: 5), (timer) {});
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 300),
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
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.blockSizeVertical * 5),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) {
                              return OlahragaItem();
                            }),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                          size: SizeConfig.blockSizeHorizontal * 7,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) {
                              return OlahragaItem();
                            }),
                          );
                        },
                        child: Text(
                          'Skip',
                          style: greyFontStyle2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 8,
                ),
                Column(
                  children: [
                    Container(
                      height: SizeConfig.blockSizeVertical * 50,
                      width: SizeConfig.blockSizeHorizontal * 90,
                      child: Image.asset(
                        'assets/olahraga/lari.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        AnimatedBuilder(
                            animation: controller,
                            builder: (BuildContext context, Widget child) {
                              return Text(
                                timerString,
                                style: blackFontStyle27,
                              );
                            }),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 4),
                          child: Container(
                            margin: EdgeInsets.all(
                                SizeConfig.blockSizeHorizontal * 5),
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.blockSizeVertical * 1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FloatingActionButton(
                                    child: AnimatedBuilder(
                                      animation: controller,
                                      builder:
                                          (BuildContext context, Widget child) {
                                        return Icon(controller.isAnimating
                                            ? Icons.pause
                                            : Icons.play_arrow);
                                      },
                                    ),
                                    onPressed: () {
                                      if (controller.isAnimating) {
                                        controller.stop(canceled: true);
                                      } else {
                                        controller.reverse(
                                            from: controller.value == 0.0
                                                ? 1.0
                                                : controller.value);
                                      }
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
