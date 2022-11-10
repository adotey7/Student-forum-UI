import 'package:flutter/material.dart';

import '../../utilities/constant.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search something...',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  suffixIconColor: kMainBodyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
