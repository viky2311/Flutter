part of 'pages.dart';

class Coba extends StatefulWidget {
  Coba({Key key}) : super(key: key);

  @override
  _CobaState createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  SizeConfig sizeConfig = SizeConfig();

  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http
        .get(Uri.parse('https://wsjti.id/behealthy/public/api/list-type'));
    return json.decode(result.body)['data'];
  }

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical * 6,
          ),
          HeaderPlayList(),
          Expanded(
            child: FutureBuilder<List<dynamic>>(
              future: _fecthDataUsers(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      padding: EdgeInsets.all(10),
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OlahragaItem()),
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
                                    horizontal:
                                        SizeConfig.blockSizeHorizontal * 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 80,
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        SizeConfig.blockSizeHorizontal * 3),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Stack(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.all(SizeConfig
                                                        .blockSizeHorizontal *
                                                    1),
                                                child: Column(
                                                  children: <Widget>[
                                                    Row(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: SizeConfig
                                                                    .blockSizeHorizontal *
                                                                2,
                                                          ),
                                                          child: Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Column(
                                                                children: <
                                                                    Widget>[
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: SizeConfig.blockSizeHorizontal *
                                                                            3),
                                                                    child: Text(
                                                                      '231 tutorial',
                                                                      style:
                                                                          whiteFontStyle12,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        SizeConfig.blockSizeVertical *
                                                                            9,
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: SizeConfig.blockSizeHorizontal *
                                                                            2),
                                                                    child: Text(
                                                                      snapshot.data[
                                                                              index]
                                                                          [
                                                                          'type'],
                                                                      style:
                                                                          whiteFontStyle1,
                                                                    ),
                                                                  )
                                                                ],
                                                              )),
                                                        ),
                                                        SizedBox(
                                                          height: SizeConfig
                                                                  .blockSizeHorizontal *
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
                        );
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    ));
  }
}
