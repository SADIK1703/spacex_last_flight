import 'package:flutter/material.dart';


  class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      currentIndex: 1,
      backgroundColor: Colors.grey[800],
      items: [
        buildBOttomNavigatorBarItem('Ana Sayfa', Icons.home),
        buildBOttomNavigatorBarItem('Ara', Icons.search),
        buildBOttomNavigatorBarItem('Kitaplığın', Icons.book)
      ],
    );
  }
}



BottomNavigationBarItem buildBOttomNavigatorBarItem(
    String bottomTitle, IconData bottomIcon) {
  return BottomNavigationBarItem(
    icon: Icon(bottomIcon, color: Colors.white),
    label: bottomTitle,
  );
}