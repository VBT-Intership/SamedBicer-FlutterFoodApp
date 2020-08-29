import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBodyContainer(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: BackButton(
        color: Colors.black,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.menu,
          ),
          color: Colors.black,
          onPressed: () {},
        )
      ],
    );
  }

  Container buildBodyContainer() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: buildTitleColumn(),
    );
  }

  Column buildTitleColumn() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 6,
              child: Text(
                'What do you want to eat today?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                ),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.search),
                iconSize: 30.0,
                onPressed: () {},
              ),
            )
          ],
        )
      ],
    );
  }
}
