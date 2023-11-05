import 'package:flutter/material.dart';
import 'package:project_log/screens/home/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController state;
  const HomeView(this.state, {Key? key}) : super(key: key);  
   
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://i.giphy.com/media/5FTe65sKNVfEc/giphy.gif',
            ),
          ],
        ),
      ),
    );
  }
}