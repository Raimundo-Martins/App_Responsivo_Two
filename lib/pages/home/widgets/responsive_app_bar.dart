import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 30,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 4),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.white, size: 15),
                  SizedBox(width: 4),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}