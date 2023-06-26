import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteMissionPage extends StatefulWidget {
  const DeleteMissionPage({super.key});

  @override
  State<DeleteMissionPage> createState() => _DeleteMissionPageState();
}

class _DeleteMissionPageState extends State<DeleteMissionPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Mission'),
      ),
      body: const Center(
        child: Text('Delete Mission'),
      ),
    );
  }
}