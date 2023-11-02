import 'package:flutter/material.dart';

class ReccomedetionPage extends StatelessWidget {
  const ReccomedetionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RECCOMEDETION"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const Center(
        child: Text(
          "PLEASE TRY AGAIN CHECK INTERNET",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
