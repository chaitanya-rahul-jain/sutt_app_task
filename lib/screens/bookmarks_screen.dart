import 'package:flutter/material.dart';
import 'package:sutt_app_task/custom_widgets/my_list_views.dart';
import 'package:go_router/go_router.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    CountryBookmark(),
    CityBookmark(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 40, 49),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Bookmarks',
          style: TextStyle(
            fontSize: 27,
          ),
        ),
        leading: IconButton(
          iconSize: 24,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 30, 40, 49),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Country',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'City',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        onTap: _onItemTapped,
      ),
    );
  }
}
