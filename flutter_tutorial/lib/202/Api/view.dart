import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/Api/provider/dio_provider.dart';
import 'package:provider/provider.dart';

import 'dio_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final apiService = ApiService();
  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, HomeProvider provider, child) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          title: Column(
            children: [
              TextField(
                controller: emailController,
              ),
              TextField(
                controller: passwordController,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          apiService.firebaseSendData(email: emailController.text, password: passwordController.text);
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
