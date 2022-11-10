import 'package:flutter/material.dart';
import 'package:student_forum/models/post_details.dart';
import 'package:student_forum/shared/modal_sheet.dart';
import 'package:student_forum/utilities/constant.dart';

import '../../shared/action_buttons.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: PostDetails.samples.length,
          itemBuilder: (BuildContext context, index) {
            return addPost(PostDetails.samples[index]);
          },
        ),
      ),
    );
  }

  Widget addPost(PostDetails post) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: kSecondaryColor,
                backgroundImage: AssetImage(post.imageUrl),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(post.name),
                  const Text(
                    'Scholar',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Text(
            """How can i use the student portal to obtain my results.

When I try opening, i get an error. I have visited the IT support but no feedbacks
as at now..  Any Suggestions?
""",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              ActionButtons(
                icon: Icons.star_border,
                text: post.likes,
                onPressed: () {},
              ),
              ActionButtons(
                icon: Icons.sync,
                text: post.shared,
                onPressed: () {},
              ),
              ActionButtons(
                icon: Icons.message_outlined,
                text: post.comments,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return ModalSheet();
                      });
                },
              ),
              ActionButtons(
                icon: Icons.bookmark,
                text: '1',
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Divider(
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
