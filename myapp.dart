import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tab controller",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar',
              style: TextStyle(
                color: Colors.black,
              )),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Tab1"),
              Tab(text: "Tab2"),
              Tab(text: "Tab3"),
              Tab(text: "Tab4"),
              Tab(text: "Tab5"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Tab 1 Content',
              style:TextStyle(color: Colors.blue,fontSize: 22)
            ),
            ),
            Center(child: Text('Tab 2 Content',
                style:TextStyle(color: Colors.blue,fontSize: 22)
            ),
            ),
            Center(child: Text('Tab 3 Content',
                style:TextStyle(color: Colors.blue,fontSize: 22)
            ),
            ),
            Center(child: Text('Tab 4 Content',
                style:TextStyle(color: Colors.blue,fontSize: 22)
            ),
            ),
            Center(child: Text('Tab 5 Content',
                style:TextStyle(color: Colors.blue,fontSize: 22)
            ),
            ),
          ],
        ),
      ),
    );
  }
}
