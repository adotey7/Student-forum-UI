import 'package:flutter/material.dart';
import 'package:student_forum/utilities/constant.dart';

class ModalSheet extends StatefulWidget {
  const ModalSheet({Key? key}) : super(key: key);

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.75,
        decoration: const BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/user.png'),
                backgroundColor: kSecondaryColor,
              ),
              title: SizedBox(
                height: 40,
                child: TextField(
                  decoration: kFields.copyWith(
                    label: const Text('Type a comment...'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 100,
              child: Divider(
                thickness: 2,
              ),
            ),
            ListTile(
              leading: Image.asset('assets/profile1.png'),
              title: const Text('Alex'),
              subtitle: const Text(
                """Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem""",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/profile4.png'),
              title: const Text('Samira'),
              subtitle: const Text(
                """Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem""",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/profile3.png'),
              title: const Text('Cyril'),
              subtitle: const Text(
                """Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem""",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/profile2.png'),
              title: const Text('John'),
              subtitle: const Text(
                """Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem""",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ));
  }
}
