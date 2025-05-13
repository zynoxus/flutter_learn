import 'dart:math';

import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  final appbarTitleTheme = "İnstagram";
  final RandomGorselUrl =
      'https://static.wikia.nocookie.net/youkoso-jitsuryoku-shijou-shugi-no-kyoushitsu-e/images/b/bf/Episode_012-07.jpg/revision/latest/scale-to-width-down/985?cb=20170928143111';
  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).primaryTextTheme.bodyLarge,

        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              showBottomSheet(context: context, builder: (context) => Column());
            },
            icon: Icon(Icons.face),
          ),
        ],
        backgroundColor: Colors.amberAccent,
        title: AppbarRow(context),
      ),
      body: Column(
        children: [
          expandedColors(context),
          expandedCards(),
          Expanded(
            flex: 1,
            child: Container(width: 100, height: 100, color: randomColor),
          ),
        ],
      ),
    );
  }

  Expanded expandedColors(BuildContext context) =>
      Expanded(flex: 5, child: expandedListView(context));

  Expanded expandedCards() {
    return Expanded(
      flex: 4,
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("$appbarTitleTheme $index"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(RandomGorselUrl),
              ),
              trailing: Icon(Icons.arrow_right_alt),
            ),
          );
        },
      ),
    );
  }

  ListView expandedListView(BuildContext context) {
    return ListView(
      children: [
        ListViewContainer(context),
        ListViewContainer(context),
        ListViewContainer(context),
        ListViewContainer(context),
        ListViewContainer(context),
      ],
    );
  }

  Container ListViewContainer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: randomColor,
    );
  }

  Row AppbarRow(BuildContext context) {
    return Row(
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
    );
  }
}
