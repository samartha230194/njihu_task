import 'package:flutter/material.dart';

class BottomItems extends StatelessWidget {
  final TabController tabControllerBottom;
  BottomItems(this.tabControllerBottom);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        elevation: 10,
        child: BottomAppBar(
          notchMargin: 8,
          shape: CircularNotchedRectangle(),
          child: TabBar(
            controller: tabControllerBottom,
            tabs: [
              Tab(
                icon: Icon(Icons.search),
                text: 'Explore',
              ),
              Tab(
                icon: Icon(Icons.message),
                text: 'Connections',
              ),
              Tab(
                icon: Icon(Icons.star_border_outlined),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.calendar_today_outlined),
                text: 'Dates',
              ),
              Tab(
                icon: Icon(Icons.person_outline),
                text: 'Dashboard',
              ),
            ],
            labelStyle: TextStyle(fontSize: 10),
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Theme.of(context).accentColor,
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Theme.of(context).primaryColor,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 72.50),
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColor, width: 3),
            ),
          ),
        ),
      ),
    );
  }
}
