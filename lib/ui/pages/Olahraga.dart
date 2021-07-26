part of 'pages.dart';

class OlahragaItem extends StatefulWidget {
  @override
  _OlahragaItemState createState() => _OlahragaItemState();
}

class _OlahragaItemState extends State<OlahragaItem> {
  FocusNode myFocusNode;

  @override
  void dispose() {
    super.initState();
    myFocusNode.dispose();
    super.dispose();
  }

  List<Container> daftarOlaharaga = new List();
  // var klik = [{}];

  // @override
  // void lari() {
  //   super.initState();
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => PlayerPage()),
  //   );
  // }

  var olahraga = [
    {"nama": "Lari", "gambar": "lari.png", "function": 'lari()'},
    {"nama": "Holahup", "gambar": "holahup.png", "function": "lari()"},
    {"nama": "Push Up", "gambar": "pushUp.png", "function": "lari()"},
    {"nama": "Sit Up", "gambar": "sitUp.png", "function": "lari()"},
    {"nama": "Jongkok", "gambar": "jongkok.png", "function": "lari()"},
    {"nama": "Lompat Tali", "gambar": "lompatTali.png", "function": "lari()"},
  ];

  _buatlist() async {
    for (var i = 0; i < olahraga.length; i++) {
      final olahraganya = olahraga[i];
      final String gambar = olahraganya["gambar"];
      daftarOlaharaga.add(Container(
        padding: EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Jongkok()),
            );
          },
          child: Card(
            color: Colors.red[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            child: Column(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/olahraga/$gambar'),
                      fit: BoxFit.cover),
                ),
                width: 120,
                height: 140,
                child: Transform.translate(
                  offset: Offset(20, -20),
                ),
              ),
              Text(
                olahraganya['nama'],
                style: whiteFontStyle18,
              )
            ]),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _buatlist();
    myFocusNode = FocusNode();
    super.initState();
  }

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[Placeholder()];

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
      body: Container(
        padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 3),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            HeaderOlahraga(),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockSizeHorizontal * 2),
              child: Container(
                width: SizeConfig.blockSizeHorizontal * 90,
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
                    fillColor: Colors.grey[100],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: daftarOlaharaga,
              ),
            ),
          ],
        ),
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
