import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rise_up2/Data/fetch_material_goods_data.dart';
import 'package:rise_up2/models/material_goods.dart';
import 'package:rise_up2/palette.dart';

import '../../Pages/Authentication/request_login.dart';

class SegmentedControlApp extends StatefulWidget {
  const SegmentedControlApp({Key? key}) : super(key: key);

  @override
  State<SegmentedControlApp> createState() => _SegmentedControlApp();
}

class _SegmentedControlApp extends State<SegmentedControlApp> {
  Future<List<MaterialGoods>>? _materialGoodsFuture;
  int? groupValue = 0;
  List<bool> _checkedList = [];

  @override
  void initState() {
    super.initState();
    _materialGoodsFuture = FetchDataMaterialGoods.fetchMaterialGoods();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: FutureBuilder<List<MaterialGoods>>(
        future: _materialGoodsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error); // Print error details
            return const Center(
              child: Text('An error occurred.'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No data available'),
            );
          }

          List<MaterialGoods> materialGoods = snapshot.data!;
          _checkedList = List<bool>.filled(materialGoods.length, false);
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CupertinoSlidingSegmentedControl<int>(
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
                          builder: (context) => RequestLogin(),
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(height: 16),
                if (groupValue == 0)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < materialGoods.length; i++)
                        InkWell(
                          onTap: () {
                            setState(() {
                              _checkedList[i] = !_checkedList[i];
                            });
                          },
                          child: Row(
                            children: [
                              Checkbox(
                                value: _checkedList[i],
                                onChanged: (value) {
                                  setState(() {
                                    _checkedList[i] = value!;
                                  });
                                },
                              ),
                              if (_checkedList[i])
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                              const SizedBox(width: 8),
                              Text(
                                materialGoods[i].materialGoodName,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: _checkedList[i]
                                      ? Colors.green
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildSegment(String text) => Container(
        padding: const EdgeInsets.all(12),
        child: Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      );
}
