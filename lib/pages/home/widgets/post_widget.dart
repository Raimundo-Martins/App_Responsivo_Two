import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                      'https://scontent.fjdo1-2.fna.fbcdn.net/v/t1.6435-9/187292263_1837889686380582_8418647208759133226_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=x7UrpAyZmp8AX-8VsOl&_nc_ht=scontent.fjdo1-2.fna&oh=99e3872d3d5232540a21a817ff671145&oe=60D6D3A4'),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'raymundo_jrcm',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  child: Icon(Icons.more_horiz_sharp, color: Colors.white),
                )
              ],
            ),
          ),
          Image.network(
              'https://scontent.fjdo1-2.fna.fbcdn.net/v/t1.6435-9/187292263_1837889686380582_8418647208759133226_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=x7UrpAyZmp8AX-8VsOl&_nc_ht=scontent.fjdo1-2.fna&oh=99e3872d3d5232540a21a817ff671145&oe=60D6D3A4'),
          Padding(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {},
                ),
                SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.message_outlined, color: Colors.white),
                  onPressed: () {},
                ),
                SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.white),
                  onPressed: () {},
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: Icon(Icons.bookmark_border, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Curtido por raymundo_jrcm e outras 500 pessoas',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8),
                Text('Há 1 hora',
                    style: TextStyle(fontSize: 12, color: Colors.white))
              ],
            ),
          ),
          if (desktop) ...[
            Divider(color: Colors.white),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: 'Adicione um comentário...',
                        hintStyle:
                            TextStyle(fontSize: 13, color: Colors.white54),
                      ),
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {},
                  textColor: Colors.blue,
                  child: Text('Publicar'),
                ),
              ],
            )
          ]
        ],
      ),
    );
  }
}
