import 'package:drivers_app/screens/tabs/earning_tab_screen.dart';
import 'package:drivers_app/screens/tabs/home_tab_screen.dart';
import 'package:drivers_app/screens/tabs/rating_tab_screen.dart';
import 'package:drivers_app/screens/tabs/setting_tab_screen.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>  with SingleTickerProviderStateMixin{

  TabController? tabController;
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  onTabChange(int index) {
    currentTabIndex = index;
    tabController!.index = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          HomeTabScreen(),
          EarningTabScreen(),
          RatingsTabScreen(),
          SettingsTabScreen(),
        ],
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
             BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.monetization_on) , label: "Earnings"),
             BottomNavigationBarItem(icon: Icon(Icons.star) , label: "Ratings"),
             BottomNavigationBarItem(icon: Icon(Icons.settings) , label: "Settings"),
          ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: onTabChange,
        currentIndex: currentTabIndex,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold , fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal , fontSize: 12),


      ),
    );
  }
}
