/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  /////////////////////
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Crazy Muraad',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Search',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Center(
            child: Text(
              'WALLET',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          leading: new IconButton(
            icon: new Icon(
              Icons.format_align_left_sharp,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
          backgroundColor: Colors.white),
      body: Container(
        //margin: EdgeInsets.all(15),
        color: Colors.grey[200],

        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 300.0,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                    )),
                child: Center(
                  child: Container(
                    width: 450,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                    decoration: new BoxDecoration(
                      color: Colors.orange[400],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 80),
                          Text(
                            "4000 1234 5345 7657",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "VALID FROM",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "09/23",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 45),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "VALID THRU",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "09/23",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Text(
                            "Murat Ünlü",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            SizedBox(height: 30),
            Container(
              height: 150,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.lock,
                              color: Colors.blue[300],
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "UNLOCK\nPIN/CVV",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 35),
                  FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.orange[50],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.network(
                              'https://www.pinclipart.com/picdir/big/128-1288684_holiday-homepage-designs-winter-icons-clipart.png',
                              width: 35,
                              height: 35,
                              color: Colors.orange[300],
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "FREEZE\nCARD",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 35),
                  FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.purple[50],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.network(
                              'https://cdn0.iconfinder.com/data/icons/thin-security/24/thin-0648_secret_passcode_keypad_password_access-512.png',
                              width: 35,
                              height: 35,
                              color: Colors.purple[300],
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "SHOW\nSECRET CODE",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 30),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 390,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.network(
                            'https://cdn2.iconfinder.com/data/icons/hand-gesture-icons-set-4/64/Gesture156-512.png',
                            width: 48,
                            height: 48,
                            color: Colors.blue[300],
                          ),
                        ),
                      ),
                      SizedBox(width: 13),
                      Text(
                        "ATM Cardless",
                        style: TextStyle(fontSize: 21),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Container(
                    color: Colors.grey[100],
                    height: 2,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 70, right: 30),
                  ),
                  SizedBox(height: 14),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.location_pin,
                            color: Colors.orange[300],
                          ),
                        ),
                      ),
                      SizedBox(width: 13),
                      Text(
                        "ATM Locator",
                        style: TextStyle(fontSize: 21),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Container(
                    color: Colors.grey[100],
                    height: 2,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 70, right: 30),
                  ),
                  SizedBox(height: 14),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.purple[50],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.security,
                            color: Colors.purple[300],
                          ),
                        ),
                      ),
                      SizedBox(width: 13),
                      Text(
                        "Security Card",
                        style: TextStyle(fontSize: 21),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Container(
                    color: Colors.grey[100],
                    height: 2,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 70, right: 30),
                  ),
                  SizedBox(height: 14),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.green[50],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.network(
                            'https://cdn0.iconfinder.com/data/icons/car-wash/500/guage-512.png',
                            width: 33,
                            height: 33,
                            color: Colors.green[300],
                          ),
                        ),
                      ),
                      SizedBox(width: 13),
                      Text(
                        "Limits",
                        style: TextStyle(fontSize: 21),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 150,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.lock,
                              color: Colors.blue[300],
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "UNLOCK\nPIN/CVV",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 35),
                  FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.orange[50],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.network(
                              'https://www.pinclipart.com/picdir/big/128-1288684_holiday-homepage-designs-winter-icons-clipart.png',
                              width: 35,
                              height: 35,
                              color: Colors.orange[300],
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "FREEZE\nCARD",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 35),
                  FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.purple[50],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.network(
                              'https://cdn0.iconfinder.com/data/icons/thin-security/24/thin-0648_secret_passcode_keypad_password_access-512.png',
                              width: 35,
                              height: 35,
                              color: Colors.purple[300],
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "SHOW\nSECRET CODE",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black87,
        onTap: _onItemTapped,
      ),
    );
  }
}
