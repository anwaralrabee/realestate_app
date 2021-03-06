import 'package:flutter/material.dart';
import 'package:realestate_app/components/display_card_widget.dart';
import '../components/display_card_widget.dart';
import '../components/short_filter_button.dart';
import 'filter_bottomsheet_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      obscureText: false,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black54, width: 1.0),
                          gapPadding: 6.0,
                        ),
                        contentPadding: EdgeInsets.all(5.0),
                        border: InputBorder.none,
                        hintText: 'Search Properties',
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.search,
                      color: Color(0xffF8F8F9),
                      size: 50,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ShortFilterButton(title: 'House'),
                      ShortFilterButton(title: 'Price'),
                      ShortFilterButton(title: 'Security'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: FlatButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) =>
                                      FilterBottomSheetScreen());
                            },
                            child: Text(
                              'Filters',
                              style: TextStyle(color: Colors.black87),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '53',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          ' Results Found',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  DisplayCardWidget(
                    imageFile: 'images/house1.jpg',
                    name: 'Clinton Villa',
                    city: 'Los Angeles',
                    price: '\$3,500.00',
                    distance: '2,456',
                    review: 4.4,
                  ),
                  DisplayCardWidget(
                    imageFile: 'images/house2.jpeg',
                    name: 'Hilton Villa',
                    city: 'California',
                    price: '\$3,100.00',
                    distance: '2,100',
                    review: 4.1,
                  ),
                  DisplayCardWidget(
                    imageFile: 'images/house.jpg',
                    name: 'IBE House',
                    city: 'Florida',
                    price: '\$4,500.00',
                    distance: '4,100',
                    review: 4.5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
