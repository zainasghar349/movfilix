import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/screens/home%20_screen/widgets/carousel_builder.dart';
import 'package:movfilix/screens/home%20_screen/widgets/movie_list_builder.dart';
import 'package:movfilix/screens/home%20_screen/widgets/search_builder.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: 15, 
        vertical: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchBuilder(),
          const SizedBox(height: 20),
          const CarouselBuilder(),
          const SizedBox(height: 20),
          MoviesListBuilder(
            title: "Popular Movies",
            movies: AppConstants.movies,
            onTap: (){},
          ),
          const SizedBox(
            height: 20,
          ),
          MoviesListBuilder(
            movies: AppConstants.movies,
            title: "Action",
          ),
          const SizedBox(
            height: 20,
          ),
          MoviesListBuilder(
            movies: AppConstants.movies,
            title: "Continue Watching",
          ),
          const SizedBox(
            height: 20,
          ),
          MoviesListBuilder(
            movies: AppConstants.movies,
            title: "New Releases",
          ),
        ],
      ),
    );
  }
}
