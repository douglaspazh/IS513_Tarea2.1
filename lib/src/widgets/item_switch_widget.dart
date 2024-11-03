import 'package:flutter/material.dart';

class ItemSwitchWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool value;

  const ItemSwitchWidget({super.key, 
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 60,
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
      title: Text(
        title,
        style: const TextStyle(fontSize: 18)
      ),
      trailing: Switch(
        value: value,
        onChanged: (bool newValue) {},
        activeColor: Colors.white,
        activeTrackColor: Colors.green,
      ),
    );
  }
}
