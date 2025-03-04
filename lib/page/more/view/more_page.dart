import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('More Page')),
      body: Center(child: Text("施工中", style: TextStyle(fontSize: 24))),
    );
  }
}
