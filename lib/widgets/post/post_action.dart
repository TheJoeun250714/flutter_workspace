import 'package:flutter/material.dart';

class post_action extends StatefulWidget {
  const post_action({super.key});

  @override
  State<post_action> createState() => _post_actionState();
}

class _post_actionState extends State<post_action> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('post_action is working'),
      ),
    );
  }
}
