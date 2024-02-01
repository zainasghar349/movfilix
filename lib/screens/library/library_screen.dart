import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_routes.dart';
import 'package:movfilix/constants/exports.dart';
// import 'package:movfilix/screens/library/widgets/movies_sec.dart';
// import 'package:movfilix/screens/library/widgets/tv_shows.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key,}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen>
    with SingleTickerProviderStateMixin {
  // ignore: prefer_typing_uninitialized_variables
  late final _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PreferredSize(
          preferredSize: const Size(double.infinity, 100),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: const EdgeInsets.symmetric(vertical: 10),
            indicatorWeight: 4,
            controller: _tabController,
            tabs: const [
              Text("Movies"),
              Text("TV Series"),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: AppConstants.movies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  mainAxisExtent: 160,
                ),
                itemBuilder: (context, index) {
                  final movie = AppConstants.movies[index];
                  return InkWell(
                    onTap: () => Get.toNamed(AppRoutes.detailScreen,arguments:movie.url ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: CacheImage(url: movie.url),
                    ),
                  );
                },
              ),
              GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: AppConstants.movies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  mainAxisExtent: 160,
                ),
                itemBuilder: (context, index) {
                  final movie = AppConstants.movies[index];
                  return InkWell(
                    onTap: () => Get.toNamed(AppRoutes.detailScreen,arguments:movie.url ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: CacheImage(url: movie.url),
                    ),
                  );
                },
              ),
             
            ],
          ),
        ),
      ],
    );
  }
}
