import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });
  final IconData? icon;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.grey),
        title: Text(text),
        onTap: onTap,
      ),
    );
  }
}
