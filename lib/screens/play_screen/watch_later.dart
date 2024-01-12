import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_colors.dart';

class WatchLater extends StatelessWidget {
  const WatchLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondary,
        appBar: AppBar(
          title: const Text(
            "Watch Later",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: AppColors.secondary,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Tv Shows & Movies",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                ...List.generate(
                  10,
                  (index) => Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 100,
                        width: 127,
                        decoration: const BoxDecoration(
                            color: AppColors.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const CacheImage(
                            url:
                                "https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg"),
                      ),
                      title: const Text("Extraction 2"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_forever,
                            size: 30,
                            color: Colors.red,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
