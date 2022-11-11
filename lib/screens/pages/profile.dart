import 'package:flutter/material.dart';
import 'package:student_forum/utilities/constant.dart';

import '../../components/profile_tile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.25,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/fl.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -80,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: width * 0.13,
                            backgroundColor: kSecondaryColor,
                            backgroundImage:
                                const AssetImage('assets/profile1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Alex Yomi'),
                                Text(
                                  'Scholar',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.15,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person_add,
                              color: kMainBodyColor,
                            ),
                            label: const Text(
                              'Follow',
                              style: TextStyle(
                                color: kMainBodyColor,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              side: const BorderSide(
                                color: kMainBodyColor,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.12,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
              const ProfileTile(
                label: 'Student',
                icon: Icons.business_center,
              ),
              const ProfileTile(
                label: 'Went to Nunsec (Abladei)',
                icon: Icons.school,
              ),
              const ProfileTile(
                label: 'Went to Ghana Communication Technology',
                icon: Icons.school,
              ),
              const ProfileTile(
                label: 'Lives in Tema, Ghana',
                icon: Icons.home,
              ),
              const ProfileTile(
                label: 'From Accra, Ghana',
                icon: Icons.location_pin,
              ),
              const ProfileTile(
                label: 'Single',
                icon: Icons.favorite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
