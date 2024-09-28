import 'package:flutter/material.dart';

class TabExample extends StatefulWidget {
  const TabExample({super.key});

  @override
  State<TabExample> createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: SizedBox(
        width: double.infinity,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              child: TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.directions_car)),
                          Tab(icon: Icon(Icons.directions_transit)),
                         
                        ],
                      ),
            ),
                    Expanded(
                      child: TabBarView(
                                      children: [
                                        Icon(Icons.directions_car),
                                        Icon(Icons.directions_transit),
                                      
                                      ],
                                    ),
                    )
          ],
        ),
      ),
    );
  }
}
