import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project_log/screens/home/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController state;
  const HomeView(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        centerTitle: false,
      ),
      body: state.projectLogs == null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitWave(
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            )
          : CustomScrollView(
              slivers: [
                SliverList.list(
                  children: const [
                    Card(),
                  ],
                ),
              ],
            ),
    );
  }
}
