import 'package:carpon_footprint/UI/Home/Tabs/AccountTab/account_tab.dart';
import 'package:carpon_footprint/UI/Home/Tabs/CalculatorTab/calculator_tab.dart';
import 'package:carpon_footprint/UI/Home/Tabs/CommunityTab/community_tab.dart';
import 'package:carpon_footprint/UI/Home/Tabs/HomeTab/home_tab.dart';
import 'package:carpon_footprint/UI/Home/Tabs/SaveEnergyTab/save_energy_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    const HomeTab(
      totalFootprint: 0,
      categoryBreakdown: {},
    ),
    CommunityTab(),
    CalculatorTab(
      onFootprintCalculated: (totalFootprint) {},
    ),
    SaveEnergyTab(),
    const AccountTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/background.jpg",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Carpon FootPrint",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: "Community"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate), label: "Calculator"),
            BottomNavigationBarItem(
              icon: Icon(Icons.electric_bolt),
              label: "Save Energy",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ),
      ),
    );
  }
}
