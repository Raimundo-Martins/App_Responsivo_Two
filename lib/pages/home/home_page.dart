import 'package:flutter/material.dart';
import 'package:responsivo_two/pages/home/widgets/post_widget.dart';
import 'package:responsivo_two/pages/home/widgets/responsive_app_bar.dart';
import 'package:responsivo_two/pages/home/widgets/right_panel.dart';
import 'package:responsivo_two/pages/home/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      backgroundColor: Colors.black87,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    StoriesList(),
                    PostWidget(),
                  ],
                ),
              ),
              RightPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
