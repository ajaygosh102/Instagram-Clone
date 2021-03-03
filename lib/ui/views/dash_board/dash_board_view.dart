import 'package:flutter/material.dart';import 'package:instagram_clone/ui/views/dash_board/dash_board_view_model.dart';import 'package:instagram_clone/ui/views/home/home_view.dart';import 'package:stacked/stacked.dart';class DashBoard extends StatefulWidget {  @override  _DashBoardState createState() => _DashBoardState();}class _DashBoardState extends State<DashBoard> {  @override  Widget build(BuildContext context) {    return ViewModelBuilder<DashBoardModel>.reactive(      builder: (context, model, child) => Scaffold(          bottomNavigationBar: BottomNavigationBar(            showSelectedLabels: false,            showUnselectedLabels: false,            items: List.generate(              model.bottomNavigation.length,              (index) => BottomNavigationBarItem(                icon: model.bottomNavigation[index]                    [model.selectedIndex == index ? 'icon' : 'outline'],                label: '',              ),            ),            currentIndex: model.selectedIndex,            selectedItemColor: Colors.black,            unselectedItemColor: Colors.black,            onTap: model.onItemTapped,          ),          body: model.selectedIndex == 0 ? HomeView() : Container()),      viewModelBuilder: () => DashBoardModel(),    );  }}