import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/exports.dart';

class SeeAllScreen extends StatelessWidget {
 
  const SeeAllScreen({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
     var titleList=Get.arguments["title"];
     var moviesList=Get.arguments["movies"];

    return Scaffold(
      appBar: AppBar(title: Text((titleList) ,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),),
      body: GridView.builder(
        padding:
            const EdgeInsets.all(10),
        itemCount: AppConstants.movies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          mainAxisExtent: 160,
        ),
        itemBuilder: (context, index) {
          
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            child: CacheImage(url: moviesList[index].url),
          );
        },
      ),
    );
  }
}
