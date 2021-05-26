import 'package:flutter/material.dart';
import 'package:flutter_01/theme.dart';

class NotifBadge extends StatelessWidget {
  final iconSize;
  final insideCircleW;
  final insideCircleH;
  final outsideCircleW;
  final outsideCircleH;

  NotifBadge(
      {this.iconSize,
      this.insideCircleW,
      this.insideCircleH,
      this.outsideCircleW,
      this.outsideCircleH});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.all(0),
            icon: const Icon(Icons.notifications),
            iconSize: 23,
            color: linkWaterColor,
            onPressed: () {},
          ),
          Positioned(
            top: 10,
            right: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: oriolesOrange,
                  shape: BoxShape.circle,
                  border: Border.all(color: whiteColor, width: 2)),
              constraints: BoxConstraints(
                minWidth: 14,
                minHeight: 14,
              ),
              child: Center(
                child: Text(
                  '1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
