import 'package:flutter/material.dart';
import 'package:goluu_app/presentations/dashboard/rediscover/rediscover.dart';
import 'package:goluu_app/presentations/dashboard/transform/transform.dart';
import 'package:goluu_app/utils/color.dart';

import 'consult/consult.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    Rediscover(),
    ConsultScreen(),
    TransformScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorResource.white,
          automaticallyImplyLeading: false,
          title: const Text("Dashboard",style: TextStyle(color: ColorResource.darkBlue),),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.person_3_outlined,color: ColorResource.darkPink))
          ],
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/rediscoverWhite.png",width: 40,fit: BoxFit.cover,),
              label: 'Rediscover',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/consultwhite.png",height: 40),
              label: 'Consult',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/transformwhite.png",width: 40,),
              label: 'Transform',
            ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: ColorResource.darkBlue,
          selectedItemColor: ColorResource.darkPink,
          unselectedItemColor: ColorResource.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
