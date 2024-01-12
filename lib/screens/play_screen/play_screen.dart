import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/screens/play_screen/watch_later.dart';

class PlayScreen extends StatelessWidget {
  final String url;
  const PlayScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: CacheImage(
              url: url,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.secondary.withOpacity(0.2),
                    AppColors.secondary,
                    AppColors.secondary,
                  ],
                ),
              ),
              child: SingleChildScrollView(
                reverse: true,
                padding: EdgeInsets.only(
                    left: 10, right: 10, top: size.height * 0.4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          "1H 52MIN",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "13+",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "2012",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "8 Episodes",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.7)),
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
                            )),
                        const Spacer(),
                        IconButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WatchLater(),
                                )),
                            icon: const Icon(
                              Icons.add,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.download,
                              size: 27,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Among the palaces and paris and his gang to stea. ultrices quis and having fun with others it was good experience",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Starring: mehak khan, fatima amna, lemon....",
                      style: TextStyle(
                          fontSize: 10, color: Colors.white.withOpacity(0.5)),
                    ),
                    Text("Creator:  Esther MArties, Alex Pina",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white.withOpacity(0.5))),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Episodes",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          AppConstants.episodes.length,
                          (index) => Container(
                            margin: const EdgeInsets.only(right: 20),
                            height: 130,
                            width: 220,
                            decoration:
                                const BoxDecoration(color: AppColors.primary),
                            child: CacheImage(
                              url: AppConstants.episodes[index].url,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1. The Energy of Lov"),
                            Text("57 MIN"),
                          ],
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.download))
                      ],
                    ),
                    const Text(
                      "More Like this",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
