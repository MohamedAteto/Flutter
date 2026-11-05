import 'package:flutter/material.dart';

class Challenge extends StatelessWidget {
  final String Title;
  final String subtitle;
  final IconData leadingIcon;
  final Color cardColor;

  const new({
    super.key,
    required this.Title,
    required this.subtitle,
    required this.leadingIcon,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Challenge Page')),
      body: Center(
        child: Container(
          width: 500,
          height: 100,

          child: Card(
            margin: EdgeInsets.all(16),
            color: cardColor,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(26),
            ),
            child: ListTile(
              leading: Icon(leadingIcon, size: 30, color: Colors.purple),
              title: Text(Title),
              subtitle: Text(subtitle),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
