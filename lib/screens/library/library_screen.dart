import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/screens/library/widgets/movies_sec.dart';
import 'package:movfilix/screens/library/widgets/tv_shows.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Library",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ],
          centerTitle: true,
          backgroundColor: AppColors.secondary,
          bottom: const TabBar(
            tabs: [
              Text(
                "Movies",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Text(
                "Tv Shows",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          MoviesScreen(),
          TvShowScreen(),
        ]),
      ),
    );
  }
}
