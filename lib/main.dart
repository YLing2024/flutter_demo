import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/animation/animation_test.dart';
import 'package:flutter_demo/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: routes,
      initialRoute: "/",
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pages> pages = [
    Pages(
      route: "/animation/animationTest",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, pages[index].route);
            },
            child: pages[index].builder != null
                ? pages[index].builder!(context, index)
                : ListTile(
                    title: Text(pages[index].route),
                  ),
          );
        },
      ),
    );
  }
}

class Pages {
  /// 路由
  final String route;
  final NullableIndexedWidgetBuilder? builder;

  Pages({
    required this.route,
    this.builder,
  });
}
