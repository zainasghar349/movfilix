import 'package:flutter/material.dart';
import 'package:movfilix/screens/detail_screen/watch_later.dart';

class WatchLaterSection extends StatelessWidget {
  const WatchLaterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WatchLater(),
              ),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.add,
                  size: 28,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Watch Later",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          height: 30,
          color: Colors.white.withOpacity(0.2),
        )
      ],
    );
  }
}
