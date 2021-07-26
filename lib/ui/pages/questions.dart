part of 'pages.dart';

class QuestPage extends StatelessWidget {
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
              colors: [Colors.blue[500], Colors.blue[300], Colors.blue[400]]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Header(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 2,
                      horizontal: SizeConfig.blockSizeHorizontal * 3),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          InputField(),
                          // ButtonQuestion(),
                        ],
                      ),
                    ],
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
