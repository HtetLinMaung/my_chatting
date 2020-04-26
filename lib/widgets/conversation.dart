import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  final List items;

  Conversation({this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 20.0,
          ),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelStyle: TextStyle(
                color: Color(0xff927c9c),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffefefef),
                ),
              ),
              labelText: 'Search by interests',
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xff7a5e85),
              ),
            ),
          ),
        ),
      ],
    );
    // return ListView.separated(
    //     itemBuilder: null, separatorBuilder: null, itemCount: null);
  }
}
