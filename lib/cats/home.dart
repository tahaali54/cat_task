import 'package:flutter/material.dart';

import 'bottom_nav.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
