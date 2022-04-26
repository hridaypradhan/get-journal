import 'package:flutter/material.dart';

import '../../global/constants/colors.dart';
import '../../services/auth_service.dart';
import '../landing/landing_screen.dart';
import 'widgets/bookmark_switch.dart';
import 'widgets/profile_action.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 45.0,
                      backgroundImage:
                          NetworkImage(AuthService.currentUser?.photoURL ?? ''),
                    ),
                    const VerticalDivider(
                      color: kPrimaryBlue,
                      thickness: 1.5,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          color: kPrimaryBlue,
                          fontSize: 30.0,
                        ),
                        text: 'Joined',
                        children: [
                          TextSpan(
                            text: '\n6 months ago',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryBlue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Builder(
                builder: (context) {
                  String name =
                      AuthService.currentUser?.displayName ?? 'Sample Name';
                  List<String> splitName = name.split(' ');
                  return RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: kPrimaryBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                      text: splitName[0],
                      children: [
                        TextSpan(
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                          text:
                              ' ${splitName.length > 1 ? splitName[1] : ''} ${splitName.length > 2 ? splitName[2] : ''}',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          const Divider(
            color: kPrimaryBlue,
            thickness: 1.5,
            height: 0,
          ),
          ProfileAction(
            leadingIcon: Icons.pie_chart,
            trailingIcon: const Icon(
              Icons.chevron_right,
              color: kPrimaryBlue,
              size: 50.0,
            ),
            text: 'Stats',
            action: () {},
          ),
          ProfileAction(
            leadingIcon: Icons.bookmark_added,
            trailingIcon: const BookmarkSwitch(),
            text: 'Saved\npapers',
            action: () {},
          ),
          ProfileAction(
            leadingIcon: Icons.logout,
            trailingIcon: const Icon(
              Icons.chevron_right,
              size: 50.0,
              color: kPrimaryBlue,
            ),
            text: 'Sign out',
            action: () {
              AuthService().signOut();
              Navigator.popAndPushNamed(context, LandingScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
