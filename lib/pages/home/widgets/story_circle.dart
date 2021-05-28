import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://scontent.fjdo1-2.fna.fbcdn.net/v/t1.6435-9/187292263_1837889686380582_8418647208759133226_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=x7UrpAyZmp8AX-8VsOl&_nc_ht=scontent.fjdo1-2.fna&oh=99e3872d3d5232540a21a817ff671145&oe=60D6D3A4'),
            ),
          ),
        ),
        Text(
          'raymundo_jrcm',
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
