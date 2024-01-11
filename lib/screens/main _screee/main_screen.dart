import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/screens/main%20_screee/widgets/carousel_builder.dart';
import 'package:movfilix/screens/main%20_screee/widgets/movie_list_builder.dart';
import 'package:movfilix/screens/main%20_screee/widgets/search_builder.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
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
            ),
            
          ],
        ),
      ),
    );
  }
}
