import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PODCAST"),
        backgroundColor: Colors.green.shade600,
        centerTitle: true,
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ELON MUSK"),
          SizedBox(
            height: 10,
          ),
          Text("STEVE JOBS"),
          SizedBox(
            height: 10,
          ),
          Text("ORIAT DONO"),
        ],
      )),
    );
  }
}
