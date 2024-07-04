import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(primaryColor: Colors.white),
      home: const HomePage(title: 'firstpage'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Neighborhoods of niš'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.assistant_photo))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [DrawerHeader(child: Text('Welcome'))],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Placeholder(fallbackHeight: 300, fallbackWidth: 300),
            SizedBox(
              child: ListView(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DurlanPage(title: 'DurlanPage');
                      }));
                    },
                    child: Expanded(
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/durlan.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const BulevarPage(title: 'BulevarPage');
                      }));
                    },
                    child: Expanded(
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/Bulevar.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CenterPage(title: 'CenterPage');
                      }));
                    },
                    child: Expanded(
                      child: Container(
                        child: Image(
                          image: AssetImage(
                              'assets/nis-serbien_panorama-768x333.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const NiskabanjaPage(title: 'NiskabanjaPage');
                      }));
                    },
                    child: Expanded(
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/Niskabanja.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DurlanPage extends StatelessWidget {
  const DurlanPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Durlan"),
      ),
      body: Center(child: Container(color: Colors.blue)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Vote'),
        icon: const Icon(Icons.how_to_vote_rounded),
        backgroundColor: Colors.pink,
      ),
    );
  }
}

class BulevarPage extends StatelessWidget {
  const BulevarPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Bulevar"),
      ),
      body: Center(child: Container(color: Colors.blue)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Vote'),
        icon: const Icon(Icons.how_to_vote_rounded),
        backgroundColor: Colors.pink,
      ),
    );
  }
}

class CenterPage extends StatelessWidget {
  const CenterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Center"),
      ),
      body: Center(child: Container(color: Colors.blue)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Vote'),
        icon: const Icon(Icons.how_to_vote_rounded),
        backgroundColor: Colors.pink,
      ),
    );
  }
}

class NiskabanjaPage extends StatelessWidget {
  const NiskabanjaPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Niskabanja"),
      ),
      body: Center(child: Container(color: Colors.blue)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Vote'),
        icon: const Icon(Icons.how_to_vote_rounded),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
