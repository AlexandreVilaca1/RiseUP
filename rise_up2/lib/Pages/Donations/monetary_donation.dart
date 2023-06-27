 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rise_up2/Pages/Missions/main_page.dart';
import 'package:rise_up2/Pages/Missions/turkiye_mission_page.dart';
import '../../palette.dart';
import 'dart:core';
import 'package:flutter/services.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({required this.idMission, Key ? key}) : super(key: key);
  final int idMission;
  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  int selectedValueIndex = -1;
  int? groupValue = 0;
  bool _isChecked = false;
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TurkieMissionPage(),
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Donation',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Value',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          /// buttons de quantia de dinheiro

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // primeiro button

              GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedValueIndex == -1 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 3 ||
                        selectedValueIndex == 4) {
                      selectedValueIndex = 0;
                    } else if (selectedValueIndex == 0 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 3 ||
                        selectedValueIndex == 4) {
                      selectedValueIndex = -1;
                    }
                  });
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color:
                        selectedValueIndex == 0 ? Palette.pColor : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedValueIndex == 0
                          ? Colors.transparent
                          : Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: SizedBox(
                    width: 80,
                    height: 35,
                    child: Center(
                      child: Text(
                        '5€',
                        style: TextStyle(
                          fontSize: 16,
                          color: selectedValueIndex == 0
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // segundo buttton

              GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedValueIndex == -1 ||
                        selectedValueIndex == 0 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 3 ||
                        selectedValueIndex == 4) {
                      selectedValueIndex = 1;
                    } else if (selectedValueIndex == 0 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 3 ||
                        selectedValueIndex == 4) {
                      selectedValueIndex = -1;
                    }
                  });
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color:
                        selectedValueIndex == 1 ? Palette.pColor : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedValueIndex == 1
                          ? Colors.transparent
                          : Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: SizedBox(
                    width: 80,
                    height: 35,
                    child: Center(
                      child: Text(
                        '10€',
                        style: TextStyle(
                          fontSize: 16,
                          color: selectedValueIndex == 1
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // terceiro button

              GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedValueIndex == -1 ||
                        selectedValueIndex == 0 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 3 ||
                        selectedValueIndex == 4) {
                      selectedValueIndex = 2;
                    } else if (selectedValueIndex == 0 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 3 ||
                        selectedValueIndex == 4) {
                      selectedValueIndex = -1;
                    }
                  });
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color:
                        selectedValueIndex == 2 ? Palette.pColor : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedValueIndex == 2
                          ? Colors.transparent
                          : Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: SizedBox(
                    width: 80,
                    height: 35,
                    child: Center(
                      child: Text(
                        '25€',
                        style: TextStyle(
                          fontSize: 16,
                          color: selectedValueIndex == 2
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // quarto button

              GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedValueIndex == -1 ||
                        selectedValueIndex == 0 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 4) {
                      selectedValueIndex = 3;
                    } else if (selectedValueIndex == 0 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 3 ||
                        selectedValueIndex == 4) {
                      selectedValueIndex = -1;
                    }
                  });
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color:
                        selectedValueIndex == 3 ? Palette.pColor : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedValueIndex == 3
                          ? Colors.transparent
                          : Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: SizedBox(
                    width: 80,
                    height: 35,
                    child: Center(
                      child: Text(
                        '50€',
                        style: TextStyle(
                          fontSize: 16,
                          color: selectedValueIndex == 3
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Fim dos buttons de quantia de dinheiro

          const SizedBox(height: 25),

          // button "other"

          Container(
            margin: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selectedValueIndex == -1 || 
                        selectedValueIndex == 0 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 3) {
                        selectedValueIndex = 4;
                      } else if (selectedValueIndex == 0 ||
                        selectedValueIndex == 1 ||
                        selectedValueIndex == 2 ||
                        selectedValueIndex == 3 ||
                        selectedValueIndex == 4) {
                        selectedValueIndex = -1;
                      }
                    });
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: selectedValueIndex == 4
                          ? Colors.deepPurpleAccent
                          : Palette.pColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    child: const SizedBox(
                      width: 100,
                      height: 35,
                      child: Center(
                        child: Text(
                          'other',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Inicio do campo de preenchimento "Insert Ammount"

                if (selectedValueIndex == 4)
                  Container(
                    width: 220,
                    height: 35,
                    margin: const EdgeInsets.only(left: 50.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color.fromARGB(255, 43, 0, 0),
                        width:
                            2.0, // Optional: Increase the width of the border
                      ),
                    ),
                    child: TextField(
                      controller: amountController,
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType
                          .number, // adicionado para restringir a entrada a números
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ], // adicionado para restringir a entrada a dígitos
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: 'Insert Amount',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                

                // fim do campo de preenchimento "Insert Ammount"
              ],
            ),
          ),

          // fim do button "other"

          const SizedBox(height: 30),

          // inicio do Texto "payment methods"

          Container(
            margin: const EdgeInsets.only(top: 0.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Payment Methods',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // fim do Texto "payment methods"

          const SizedBox(height: 30),

          // inicio do button duplo "bank Transfer" // "MBWay"

          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: CupertinoPageScaffold(
              child: CupertinoSlidingSegmentedControl<int>(
                backgroundColor: const Color.fromARGB(100, 168, 8, 8),
                thumbColor: Palette.pColor,
                groupValue: groupValue,
                children: {
                  0: Container(
                    padding: const EdgeInsets.all(12),
                    child: const Text(
                      'Bank Transfer',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  1: Container(
                    padding: const EdgeInsets.all(12),
                    child: const Text(
                      'MBWay',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                },
                onValueChanged: (groupValue) {
                  setState(() => this.groupValue = groupValue);
                  if (groupValue == 1) {
                    // TODO: Adicione seu código aqui de acordo com os requisitos do projeto.
                  }
                },
              ),
            ),
          ),

          // fim do botao duplo "bank transfer" // "MBWay"

          const SizedBox(height: 20),

          // inicio do Texto "IBAN"

          if (groupValue == 0)
            Container(
              margin: const EdgeInsets.only(top: 0.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'IBAN: PT50AAAAAABBBBBBCCCCC',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          // fim do Texto "IBAN"

          // inicio do texto "Value"

          if (groupValue == 0)
             Container(
              margin: const EdgeInsets.only(top: 0.0),
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Value: 30€',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          // fim do texto "Value"

          // inicio da Caixa de texto "Phone Number"

          if (groupValue == 1)
            Row(
              children: [
                Container(
                  width: 220,
                  height: 35,
                  margin: const EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color.fromARGB(255, 43, 0, 0),
                      width: 2.0, // Optional: Increase the width of the border
                    ),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: 'Phone Number',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),

          // fim da caixa de texto "Phone Number"

          const SizedBox(height: 30),

          // inicio do Check Box "Accept Terms"

          Container(
            child: CheckboxListTile(
              title: Text("Accept Terms"),
              value: _isChecked,
              onChanged: (bool? newValue) {
                // Fix: Use 'bool?' instead of 'bool'
                if (newValue != null) {
                  setState(() {
                    _isChecked = newValue;
                  });
                }
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),

          // fim do Check Box "Accept Terms"

          const SizedBox(height: 35),

          // inicio do Botao "Donate"

          Container(
            width: 150,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              child: const Text(
                "Donate",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (selectedValueIndex == 4) {
                  final amountString = amountController.text;
                  if (amountString.isNotEmpty) {
                    final amount = int.tryParse(amountString);
                    if (amount != null && _isChecked == true) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      );
                    }
                  }
                } else if (selectedValueIndex == 0 && _isChecked == true) {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                } else if (selectedValueIndex == 1 && _isChecked == true) {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                } else if (selectedValueIndex == 2 && _isChecked == true) {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                } else if (selectedValueIndex == 3 && _isChecked == true) {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );

                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Error"),
                        content: const Text(
                            "Please accept terms to proceed our insert a valid ammount."),
                        actions: [
                          TextButton(
                            child: const Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ),

        ],
      ),
    );
  }
}
