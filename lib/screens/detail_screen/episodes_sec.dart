import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_constants.dart';

class EpisodesSection extends StatelessWidget {
  const EpisodesSection({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              AppConstants.episodes.length,
              (index) => Container(
                margin: const EdgeInsets.only(right: 20),
                
                
                width: 220,
                
                child: Column(
                  children: [
                    CacheImage(
                      url: AppConstants.episodes[index].url,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppConstants.episodes[index].title,),
                            const Text("57 MIN"),
                          ],
                        ),
                       const Spacer(),
                        GestureDetector(
                          onTap: (){},
                          child: const Icon(Icons.download))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
       const SizedBox(height: 20,)
      ],
    );
  }
}
