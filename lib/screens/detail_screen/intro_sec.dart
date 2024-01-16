import 'package:flutter/material.dart';
import 'package:movfilix/constants/app_constants.dart';
import 'package:movfilix/screens/detail_screen/download_screen.dart';
import 'package:movfilix/screens/detail_screen/watch_later.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    var index = 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              AppConstants.introModelList[index].duration,
              style:
                  TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.7)),
            ),
            const SizedBox(width: 10),
            Text(
              AppConstants.introModelList[index].rated,
              style:
                  TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.7)),
            ),
            const SizedBox(width: 10),
            Text(
              AppConstants.introModelList[index].release,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              AppConstants.introModelList[index].episodes,
              style:
                  TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.7)),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_circle_outline,
                size: 50,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WatchLater(),
                ),
              ),
              icon: const Icon(
                Icons.add,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const DownloadScreen(),)) ,
              icon: const Icon(
                Icons.download,
                size: 27,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppConstants.introModelList[index].discription,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Starring: mehak khan, fatima amna, lemon....",
          style: TextStyle(fontSize: 10, color: Colors.white.withOpacity(0.5)),
        ),
        Text("Creator:  Esther MArties, Alex Pina",
            style:
                TextStyle(fontSize: 10, color: Colors.white.withOpacity(0.5))),
      ],
    );
  }
}
