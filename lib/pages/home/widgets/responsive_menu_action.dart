import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.smallerThan(name: TABLET)],
          child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ),
        SizedBox(width: 4),
        IconButton(icon: Icon(Icons.home), onPressed: () {}),
        SizedBox(width: 4),
        IconButton(icon: Icon(Icons.send), onPressed: () {}),
        SizedBox(width: 4),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
        SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://media-exp1.licdn.com/dms/image/D5635AQE06DiJidl2gg/profile-framedphoto-shrink_200_200/0/1621164258815?e=1622228400&v=beta&t=hXfamNnF2rkBtjbAPXo0W3hX37ja8vDRoexCqC0Q_2g'),
        )
      ],
    );
  }
}
