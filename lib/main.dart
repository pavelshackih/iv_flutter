import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  void test() {}

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.search),
          ),
        ],
        leading: const Icon(
          Icons.language,
        ),
        title: const Text(
          "Irregular verbs",
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text("Verb"),
          subtitle: Text("Translate"),
          isThreeLine: false,
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsWidget(),
              ),
            )
          },
        ),
        separatorBuilder: (context, index) => Container(
          height: 1,
          color: Colors.black12,
        ),
        itemCount: 120,
      ),
    );
  }
}

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verb"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text("title"),
                subtitle: Text("subtitle"),
              ),
          separatorBuilder: (context, index) => Container(),
          itemCount: 4),
    );
  }
}
