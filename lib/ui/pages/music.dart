part of 'pages.dart';

class MusicPage extends StatefulWidget {
  MusicPage({Key key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: musicColor),
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                            image: AssetImage('assets/music/card-musik.png'),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
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
                                          'Yoga',
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
                                    image: AssetImage('assets/music/pana.png'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 260.0),
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
                SizedBox(
                  height: 470,
                  child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlayerPage()),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                child: Image(
                                    image:
                                        AssetImage('assets/music/card-1.png')),
                              ),
                              Positioned.fill(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, left: 35.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/icons/Vector.png')),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '04.00',
                                            style: musicFontStyle12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 15.0, right: 40),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                          'assets/icons/iconMusic.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                new Text(""),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: 'Beranda',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
              color: Colors.blue,
            ),
            label: 'Artikel',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: 'Person',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) {
                  return PlayList();
                }),
              );
              break;
            case 1:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) {
                  return ArtikelPage();
                }),
              );
              break;
            case 2:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) {
                  return ProfilPage();
                }),
              );
              break;
          }
        },
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.blue[50],
      ),
    );
  }
}
