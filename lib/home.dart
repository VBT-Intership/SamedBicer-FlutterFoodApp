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
      body: buildBodyContainer(context),
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

  Container buildBodyContainer(context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          titleRow(),
          SizedBox(height: 16.0),
          buildHorizontalViewContainer(context),
          SizedBox(height: 16.0),
          buildProductsExpanded(),
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

  Container buildHorizontalViewContainer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHorizontalViewImage(context),
              Spacer(),
              buildHorizontalViewText(),
            ],
          );
        },
      ),
    );
  }

  Container buildHorizontalViewImage(BuildContext context) {
    return Container(
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
    );
  }

  RichText buildHorizontalViewText() {
    return RichText(
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
    );
  }

  Expanded buildProductsExpanded() {
    return Expanded(
      child: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0,
          ),
          child: Column(
            children: [
              buildPopularRow(),
              SizedBox(height: 24.0),
              buildProductsListView(),
            ],
          ),
        ),
      ),
    );
  }

  Row buildPopularRow() {
    return Row(
      children: [
        popularIconContainer(),
        SizedBox(width: 12.0),
        popularTextColumn(),
        Spacer(),
        navigatePopularDetailButton()
      ],
    );
  }

  Container popularIconContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[400],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 32.0,
        ),
      ),
    );
  }

  Column popularTextColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          "Manggo, entekno dawekmu!",
          style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w500,
              fontSize: 14.0),
        )
      ],
    );
  }

  IconButton navigatePopularDetailButton() {
    return IconButton(
      icon: Icon(
        Icons.arrow_forward,
        size: 32.0,
      ),
      onPressed: () {},
    );
  }

  Expanded buildProductsListView() {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return buildProductsContainer();
        },
      ),
    );
  }

  Container buildProductsContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(
        children: [
          buildProductImage(),
          buildProductDetails(),
        ],
      ),
    );
  }

  Container buildProductImage() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: AssetImage(
              "/Users/samedbicer/Development/Flutter/EatingApp/assets/images/donut2.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.only(
        right: 10.0,
      ),
      width: MediaQuery.of(context).size.width * 0.22,
      height: MediaQuery.of(context).size.width * 0.22,
    );
  }

  Expanded buildProductDetails() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          productTitle(),
          SizedBox(height: 6.0),
          productTagRow(),
          SizedBox(height: 12.0),
          buildProductSpecialitiesRow(),
        ],
      ),
    );
  }

  Text productTitle() {
    return Text(
      "Banana Goreng",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    );
  }

  Row productTagRow() {
    return Row(
      children: [
        productTagContainer(
          bgColor: Colors.orange[50],
          textColor: Colors.orange,
        ),
        Spacer(flex: 1),
        productTagContainer(
          bgColor: Colors.blue[50],
          textColor: Colors.blue,
        ),
        Spacer(flex: 1),
      ],
    );
  }

  Widget productTagContainer({Color bgColor, Color textColor}) {
    return Expanded(
      flex: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 12.0,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Center(
          child: Text(
            "Gorengan",
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  Row buildProductSpecialitiesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Warung Bayakuk",
          style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w500,
              fontSize: 14.0),
        ),
        Text(
          "Rp. 2500",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
