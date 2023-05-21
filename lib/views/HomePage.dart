import 'package:flutter/material.dart';
import 'package:projectfix/models/KesanPesan.dart';
import 'package:projectfix/models/konversi.dart';
import 'package:projectfix/models/KonversiWaktu.dart';
import 'package:projectfix/models/profile.dart';
import 'package:projectfix/views/TopAnimePage.dart';
import 'package:projectfix/views/LoginPage.dart';
import 'SeasonAnime.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  List<Widget> pages = [const HomePage(), const ProfilPage()];

  int selectedIndex = 0;
  int _currentIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void onItemTapped(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopAnimePage(),
                  ),
                );
              },
              color: Colors.brown,
              child: const Text(
                'Top Anime',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SeasonAnime(),
                  ),
                );
              },
              color: Colors.brown,
              child: const Text(
                'Season Anime',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KonversiPage(),
                  ),
                );
              },
              color: Colors.brown,
              child: const Text(
                'Konversi Mata Uang',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KonversiWaktuPage(),
                  ),
                );
              },
              color: Colors.brown,
              child: const Text(
                'Konversi Waktu',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.brown,
        onTap: (value) {
          if (value == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilPage()));
          } else if (value == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => KesanPesanPage()));
          } else {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginPage()));
          }
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.person_outline_outlined),
          ),
          BottomNavigationBarItem(
            title: Text('Kesan & Pesan'),
            icon: Icon(Icons.textsms_outlined),
          ),
          BottomNavigationBarItem(
            title: Text('Logout'),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}

