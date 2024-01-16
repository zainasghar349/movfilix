import 'package:movfilix/common_widgets/bg_screen.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/screens/detail_screen/episodes_sec.dart';
import 'package:movfilix/screens/detail_screen/intro_sec.dart';
import 'package:movfilix/screens/detail_screen/similar_sec.dart';

class DetailScreen extends StatelessWidget {
  final String url;
  const DetailScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      
      body:  BackgroundScreen(
        isBackArrow: true,
        bgpath: url,
        child: SingleChildScrollView(
                  reverse: true,
                  padding: EdgeInsets.only(
                      left: 20, right: 20, top: size.height * 0.4),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 600),
               //     Container(height: 300, width: 300, color: Colors.amber,),
                      IntroSection(),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Episodes",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 10),
                      EpisodesSection(),
                      SimilarSection(),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                
      ),
      
            );
          
       
        
  
    
  }
}
