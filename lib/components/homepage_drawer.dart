import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/homepage_drawer_tile.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/pages/settings_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: getSurfaceColor(context),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: getInverseColor(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: getSecondatyColor(context),
            ),
          ),
          MyDrawerTile(
            text: 'H O M E',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: 'S E T T I N G S',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ));
            },
          ),
          const Spacer(),
          MyDrawerTile(
            text: 'L O G  O U T',
            icon: Icons.logout,
            onTap: () => logout(),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}