import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  final appbarTitleTheme = "İnstagram";
  final RandomGorselUrl =
      'https://static.wikia.nocookie.net/youkoso-jitsuryoku-shijou-shugi-no-kyoushitsu-e/images/b/bf/Episode_012-07.jpg/revision/latest/scale-to-width-down/985?cb=20170928143111';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).primaryTextTheme.bodyLarge,

        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        backgroundColor: Colors.amberAccent,
        title: Row(
          mainAxisSize: MainAxisSize.min,

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.wallpaper),
            Icon(Icons.wallpaper),
            Text(
              appbarTitleTheme,
              style: Theme.of(context).primaryTextTheme.headlineLarge,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,

            child: ListView(
              children: [
                Container(height: 500, width: 100, color: Colors.amber),
                Container(width: 500, height: 100, color: Colors.brown),
                Container(width: 500, height: 100, color: Colors.green),
                Container(width: 100, height: 100, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.deepOrange),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(width: 100, height: 100, color: Colors.brown),
          ),
          Expanded(
            flex: 1,
            child: Container(width: 100, height: 100, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
