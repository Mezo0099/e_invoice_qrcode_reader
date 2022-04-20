import 'package:flutter/material.dart';

import 'manager/functions_home.dart';
import 'screens/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  static const routeName = "/HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with FunctionsHome {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: const Icon(Icons.contact_support)),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.history)),
              Tab(icon: Icon(Icons.qr_code_scanner)),
              Tab(icon: Icon(Icons.info_outline)),
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.settings))
          ],
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("History"),),
            Home(),
            Center(child: Text("About Us"),),
          ],
        ),
      ),
    );
  }
}