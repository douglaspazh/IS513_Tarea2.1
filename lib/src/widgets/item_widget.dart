import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final int? notificationCount;

  const ItemWidget({super.key, 
    required this.icon,
    required this.title,
    this.notificationCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 40,
        height: 40,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          child: Icon(icon, color: Colors.black),
        ),
      ),
      title: Row(
        children: [
          Text(title),
          const SizedBox(width: 8),
          if (notificationCount != null) 
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '$notificationCount',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward, size: 16),
      onTap: () {},
    );
  }
}
