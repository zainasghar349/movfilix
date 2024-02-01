import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/models/movie_model.dart';
import 'package:movfilix/constants/app_routes.dart';

class MoviesListBuilder extends StatelessWidget {
  final List<MovieModel> movies;
  final String title;
  final Function()? onTap;
  const MoviesListBuilder({
    Key?key,
    required this.movies,
    required this.title,
    this.onTap,
  })
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () => Get.toNamed(AppRoutes.seeAllScreen,arguments:{"title":title,"movies":movies},),
              child: const Text("See all"),
            ),
          ],
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF676571).withOpacity(0.34),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                movies.length,
                (index) => GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.detailScreen,
                      arguments: movies[index].url),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 140,
                    width: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CacheImage(url: movies[index].url),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
