import 'package:flutter/material.dart';
import '../widgets/section_widget.dart';
import '../widgets/item_widget.dart';
import '../widgets/item_switch_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('lib/src/assets/memoji_example.jpeg'),
            ),
            const SizedBox(height: 8),
            const Text(
              'Coffeestories',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              'mark.brock@icloud.com',
              style: TextStyle(color: Colors.grey),
            ),
            
            const SizedBox(height: 16),

            //* Boton de Edit profile
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: const Text(
                'Edit profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              ),
            ),

            const SizedBox(height: 26),

            //* Seccion de Inventories
            const SectionWidget(title: 'Inventories'),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  ItemWidget(
                    icon: Icons.store,
                    title: 'My stores',
                    notificationCount: 2,
                  ),
                  Divider(height: 1, indent: 8, endIndent: 8),
                  ItemWidget(
                    icon: Icons.support,
                    title: 'Support',
                  ),
                ],
              ),
            ),

            //* Seccion de Preferences
            const SectionWidget(title: 'Preferences'),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const ItemSwitchWidget(
                    icon: Icons.notifications_outlined,
                    title: 'Push notifications',
                    value: true,
                  ),
                  const Divider(height: 1, indent: 8, endIndent: 8),
                  const ItemSwitchWidget(
                    icon: Icons.face,
                    title: 'Face ID',
                    value: true,
                  ),
                  const Divider(height: 1, indent: 8, endIndent: 8),
                  const ItemWidget(
                    icon: Icons.pin,
                    title: 'PIN Code',
                  ),
                  const Divider(height: 1, indent: 8, endIndent: 8),
                  ListTile(
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: const Icon(Icons.logout, color: Colors.red),
                      ),
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
