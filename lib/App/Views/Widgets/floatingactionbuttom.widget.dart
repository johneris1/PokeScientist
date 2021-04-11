import 'package:flutter/material.dart';

Widget customFab({@required Function function}) => Container(
      height: 64.0,
      width: 64.0,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: function,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xff00FFCC), Color(0xff223066)])),
            child: Icon(
              Icons.add,
              size: 50,
            ),
          ),
        ),
      ),
    );
