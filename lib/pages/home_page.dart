import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'pageViews/page_one.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottonNavigationBar = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pedido de namoro'),
          backgroundColor: Color.fromRGBO(40, 40, 40, 1),

        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Elio Fernandes'), 
                accountEmail: Text('eliosadndrofernandes@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white70,
                  child: Text('MF'),
                ),
              ),

              ListTile(
                title: Text('Page 1'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  _pageController.jumpToPage(0);
                  Navigator.pop(context);
                  setState(() {
                    indexBottonNavigationBar = 0;
                  });
                },
              ),
              ListTile(
                title: Text('Page 2'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  _pageController.jumpToPage(1);
                  Navigator.pop(context);
                  setState(() {
                    indexBottonNavigationBar = 1;
                  });
                },
              ),
              ListTile(
                title: Text('Page 3'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  _pageController.jumpToPage(2);
                  Navigator.pop(context);
                  setState(() {
                    indexBottonNavigationBar = 2;
                  });
                },
              ),
            ],
          ),
        ),
        body: PageView(
          controller: _pageController,
          children: [
            page_one(),
            Container(
                color: Colors.amber,
            ),
            Container(
                color: Colors.blue,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottonNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottonNavigationBar = page;
            });
            _pageController.animateToPage(
              page,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 1'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 2'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 3'
            ),
          
        ]),
      );
  }
}