part of 'pages.dart';

class ProfilPage extends StatefulWidget {
  ProfilPage({Key key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(
        Uri.parse('https://wsjti.id/behealthy/public/api/list-user-android'));
    return json.decode(result.body)['data'];
  }

  SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PlayList(),
            ),
          ),
          child: Icon(
            Icons.chevron_left,
            size: SizeConfig.blockSizeHorizontal * 10,
          ),
        ),
        title: Text(
          'Profil',
          style: blackFontStyle27,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical * 10,
          ),
          Center(
            child: Container(
              width: SizeConfig.blockSizeHorizontal * 30,
              height: SizeConfig.blockSizeHorizontal * 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.blueAccent,
                      width: SizeConfig.blockSizeHorizontal * 1)),
              child: Icon(
                Icons.group,
                size: SizeConfig.blockSizeHorizontal * 15,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 3,
          ),
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
                          title: Column(
                            children: [
                              Container(
                                width: SizeConfig.blockSizeHorizontal * 100,
                                height: SizeConfig.blockSizeVertical * 10,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[350],
                                            width:
                                                SizeConfig.blockSizeHorizontal *
                                                    1))),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right:
                                          SizeConfig.blockSizeHorizontal * 25),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.perm_identity,
                                        size:
                                            SizeConfig.blockSizeHorizontal * 8,
                                      ),
                                      Text(
                                        snapshot.data[index]['name'],
                                        style: blackFontStyle27,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: SizeConfig.blockSizeHorizontal * 100,
                                height: SizeConfig.blockSizeVertical * 10,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[350],
                                            width:
                                                SizeConfig.blockSizeHorizontal *
                                                    1))),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right:
                                          SizeConfig.blockSizeHorizontal * 32),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.insert_invitation,
                                        size:
                                            SizeConfig.blockSizeHorizontal * 8,
                                      ),
                                      Text(
                                        snapshot.data[index]['age'].toString() +
                                            "    " +
                                            "tahun",
                                        style: blackFontStyle27,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
    );
  }
}
