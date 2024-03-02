import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/Api/provider/dio_provider.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().fetchPost();
  }
  @override
  Widget build(BuildContext context) {
    
    return Consumer(builder: (context, HomeProvider provider, child) {
      return Scaffold(

        floatingActionButton: FloatingActionButton(onPressed: () {
          
        }),
        body: provider.isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: provider.items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Center(
                        child: Text(provider.items[index].title ?? "fsdfs"),
                      ),
                    ),
                  );
                }),
      );
    });
  }
}
