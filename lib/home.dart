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
      child: Column(
        children: [
          titleRow(),
          SizedBox(height: 16.0),
          Container(
            height: MediaQuery.of(context).size.width * 0.46,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "/Users/samedbicer/Development/Flutter/EatingApp/assets/images/donut2.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.only(
                        right: 10.0,
                      ),
                      width: MediaQuery.of(context).size.width * 0.38,
                      height: MediaQuery.of(context).size.width * 0.38,
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        text: "Sweets - ",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                        ),
                        children: [
                          TextSpan(
                            text: "12 Item",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Row titleRow() {
    return Row(
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
    );
  }
}
