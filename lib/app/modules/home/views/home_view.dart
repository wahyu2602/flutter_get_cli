import 'package:flutter/material.dart';
import 'package:flutter_get_cli/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: MySideBar(),
      ),
      body: const MyPageHome(),
    );
  }
}

// SideBar
class MySideBar extends StatelessWidget {
  const MySideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.20),
          child: ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Get.offAllNamed(Routes.LOGIN);
            },
          ),
        ),
      ],
    );
  }
}

// pages Home
class MyPageHome extends StatelessWidget {
  const MyPageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text("This page home."),
      ],
    );
  }
}
