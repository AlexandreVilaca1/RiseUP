import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rise_up2/Pages/Donations/monetary_donation.dart';
import 'package:rise_up2/palette.dart';




class SegmentedControlApp extends StatefulWidget {
  const SegmentedControlApp({Key? key}) : super(key: key);

  @override
  State<SegmentedControlApp> createState() => _SegmentedControlApp();

}

class _SegmentedControlApp extends State<SegmentedControlApp> {
  int? groupValue = 0;

  @override
  Widget build (BuildContext context) => CupertinoPageScaffold(
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: CupertinoSlidingSegmentedControl<int>(
        backgroundColor: const Color.fromARGB(255, 252, 228, 226),
        thumbColor: Palette.pColor,
        groupValue: groupValue,
        children: {
          0: buildSegment('Material goods'),
          1: buildSegment('Monetary goods'),
        },
        onValueChanged: (groupValue) {
          setState(() => this.groupValue = groupValue);
          if (groupValue == 1) {            
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DonationPage(),
              ),
            );
          
          }
        },
      ),
    )
    );
    Widget buildSegment(String text) => Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
      
    );
}