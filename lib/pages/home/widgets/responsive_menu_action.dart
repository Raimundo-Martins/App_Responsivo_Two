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
              'https://scontent.fjdo1-2.fna.fbcdn.net/v/t1.6435-9/187292263_1837889686380582_8418647208759133226_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=x7UrpAyZmp8AX-8VsOl&_nc_ht=scontent.fjdo1-2.fna&oh=99e3872d3d5232540a21a817ff671145&oe=60D6D3A4'),
        )
      ],
    );
  }
}
