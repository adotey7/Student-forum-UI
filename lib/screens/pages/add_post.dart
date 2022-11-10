import 'package:flutter/material.dart';
import 'package:student_forum/utilities/constant.dart';
import 'package:cool_alert/cool_alert.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  String post = "";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: const IconThemeData(
          color: kMainBodyColor,
        ),
        title: const Text(
          'Create a post',
          style: TextStyle(
            color: kMainBodyColor,
          ),
        ),
        backgroundColor: kSecondaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (post.isNotEmpty) {
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.success,
                    confirmBtnColor: kMainBodyColor,
                  );
                } else {
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.error,
                    text: 'Field cannot be empty',
                    confirmBtnText: 'Back',
                    confirmBtnColor: kMainBodyColor,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: kMainBodyColor,
              ),
              child: const Text(
                'Post',
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: kSecondaryColor,
                backgroundImage: AssetImage('assets/profile1.png'),
              ),
              title: Text(
                'Alex',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Scholar',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.10,
              child: TextField(
                keyboardType: TextInputType.multiline,
                expands: true,
                maxLines: null,
                onChanged: (text) {
                  post = text;
                },
                decoration: const InputDecoration(
                  hintText: "What's on your mind?",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
