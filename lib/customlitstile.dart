import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String Title;
  final String subtitle;
  final IconData leadingIcon;
  final Color cardColor;

  const MyWidget({
    super.key,
    required this.Title,
    required this.subtitle,
    required this.leadingIcon,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: ListTile(
        leading: Icon(leadingIcon, size: 30, color: Colors.purple),
        title: Text(Title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
