part of 'pages.dart';

class YogaPage extends StatefulWidget {
  YogaPage({Key key}) : super(key: key);

  @override
  _YogaPageState createState() => _YogaPageState();
}

class _YogaPageState extends State<YogaPage> {
  int _selectedIndex = 0;

  // static const List<Widget> _widgetOptions = <Widget>[Placeholder()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(color: yogaColor),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                              image: AssetImage('assets/yoga/card-yoga.png'),
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
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
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
                                            child: ClipRRect(
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
                                      height: 60,
                                    ),
                                    Image(
                                      image: AssetImage('assets/yoga/bro.png'),
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
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search,
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Update Terbaru',
                          style: blackFontStyle12,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider(
                      items: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) {
                                return HomeScreen();
                              }),
                            );
                          },
                          child: Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/yoga/carousel1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(6.0),
                                height: 60,
                                width: 400,
                                decoration: BoxDecoration(
                                  color: Color(0xFF000000).withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0)),
                                ),
                                child: Column(
                                  children: [
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
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                          style: whiteFontStyle4,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) {
                                return HomeScreen();
                              }),
                            );
                          },
                          child: Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/yoga/carousel1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(6.0),
                                height: 60,
                                width: 400,
                                decoration: BoxDecoration(
                                  color: Color(0xFF000000).withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0)),
                                ),
                                child: Column(
                                  children: [
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
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                          style: whiteFontStyle4,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) {
                                return HomeScreen();
                              }),
                            );
                          },
                          child: Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/yoga/carousel1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(6.0),
                                height: 60,
                                width: 400,
                                decoration: BoxDecoration(
                                  color: Color(0xFF000000).withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0)),
                                ),
                                child: Column(
                                  children: [
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
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                          style: whiteFontStyle4,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Lainnya...',
                          style: blackFontStyle12,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ArtikelMenu(),
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child:
                          Image(image: AssetImage('assets/yoga/lainnya.png')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ArtikelMenu(),
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child:
                          Image(image: AssetImage('assets/yoga/lainnya2.png')),
                    ),
                  )
                ],
              )),
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
