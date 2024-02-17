import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

// class MyRoute extends MaterialPageRoute {
//   MyRoute({builder}) : super(builder: builder);

//   @override
//   Duration get transitionDuration => const Duration(seconds: 10);
// }

class NavigationView extends StatelessWidget {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.route.navigateName('/screen2');
          },
          child: const Text("G to Screen 2"),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.coffename, required this.cost, required this.image});

  final String coffename;
  final String cost;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(image),
          Text(coffename),
          Text(cost),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.route.navigateToPage(const Screen3());
              },
              child: const Text('Push Screen 3'),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close)),
        title: const Text("Screen 2"),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close)),
        title: const Text("Screen 3"),
      ),
    );
  }
}
