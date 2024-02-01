import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';

class SearchBuilder extends StatelessWidget {
  const SearchBuilder({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Welcome Zain 👋",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          subtitle: const Text("Let's relax & watch a movie!"),
          trailing: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu),
          ),
        ),
        const SizedBox(height: 10),
        const TextfieldComponent(
          hintText: "Search Movie",
          borderRadius: 10,
          suffixIcon: Icons.mic,
          preficIcon: Icons.search,
        ),
      ],
    );
  }
}
