import 'package:flutter/material.dart';
import 'package:homework_book_app/pages/addfavourites/addfavourite_view.dart';

class FavouritPage extends StatelessWidget {
  const FavouritPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("FAVOURITES"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 47, 45, 45),
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        elevation: 4,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Jana Eyre",
            style: TextStyle(color: Colors.yellow, fontSize: 23),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Charlotta Bonante",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Lord Jim",
            style: TextStyle(color: Colors.yellow, fontSize: 23),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Joseph Conrad",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Lord Jim",
            style: TextStyle(color: Colors.yellow, fontSize: 23),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Joseph Conrad",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Lord Jim",
            style: TextStyle(color: Colors.yellow, fontSize: 23),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Joseph Conrad",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Lord Jim",
            style: TextStyle(color: Colors.yellow, fontSize: 23),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Joseph Conrad",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const AddBookPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
