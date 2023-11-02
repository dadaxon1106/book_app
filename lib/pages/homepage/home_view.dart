import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homework_book_app/pages/podcastpage/podcast_view.dart';
import 'package:homework_book_app/pages/reccomedition/reccomedetion_view.dart';
import 'package:homework_book_app/pages/removeadspage/remove_ads_view.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Books",
          style: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 47, 45, 45),
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        shadowColor: Colors.black,
        elevation: 3,
        titleSpacing: 30,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          onPressed: () {
            _globalKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        toolbarHeight: 60,
        actions: const [
          Icon(
            Icons.search,
            size: 30,
          ),
          Icon(
            Icons.more_vert,
            size: 30,
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "The Adventure of Tom Sawyer",
              style: TextStyle(color: Colors.yellow, fontSize: 25),
            ),
            Text(
              "MARK TWAIN",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "growing up along the Mississippi River. It is set in the 1840s in the town of St. Petersburg, which is based on Hannibal, Missouri, where Twain lived as a boy.[2] In the novel, Tom Sawyer has several adventures, often with his friend Huckleberry Finn. Originally a commercial failure, the book ended up being the best selling of Twain's works during his lifetime",
              style: TextStyle(
                  color: Color.fromARGB(255, 183, 179, 179),
                  fontSize: 15,
                  overflow: TextOverflow.visible,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        width: 150,
        backgroundColor: const Color.fromARGB(255, 47, 45, 45),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FavouritPage();
                  },
                ));
              },
              icon: Icon(
                Icons.star,
                color: Colors.green.shade800,
              ),
            ),
            const Text(
              "Recently add",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 14,
            ),
            CircleAvatar(
              backgroundColor: Colors.orange.shade700,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ReccomedetionPage();
                      },
                    ),
                  );
                },
                icon: const Icon(
                  Icons.star,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Favourites",
              style: TextStyle(color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Bookmarks",
              style: TextStyle(color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.download),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Downloadeds",
              style: TextStyle(color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PodcastPage();
                }));
              },
              icon: const Icon(Icons.podcasts),
            ),
            const Text(
              "Podcasts",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
