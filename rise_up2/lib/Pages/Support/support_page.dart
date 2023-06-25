import 'package:flutter/material.dart';
import '../../widgets/AppBarWidget/app_bar_nav_bar.dart';
import '../Navegation_Bar/nav_bar.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPage();
}

void _abrirPaginaDoacao(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) {
      return SupportPage();
    }),
  );
}

class _SupportPage extends State<SupportPage> {
  int selectedValueIndex = -1;
  int? groupValue = 0;
  bool _isChecked = false;
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: const AppBarWidget(text: 'Support'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          const SizedBox(height: 20),

          // inicio do Text "About us"
          
          Container(
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'About us',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          // fim do texto "About Us"

          const SizedBox(height: 15),

          // Inicio do texto principal

          Container(
            margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'We are a small group of people with a goal.\nOur goal is to help victims who have suffered some kind of catastophe, be it natural, human or large-scale climate catastrophe.\nThrough associations where donated money goes, collection points where material goods go and with you we hope to create a community where it is possible to "Rise Up" the life of this group of people.\n',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // fim do texto principal

          const SizedBox(height: 40),
   
          // inicio da zona de contatos
            //inicio do titulo

            Container(
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'In case of any doubt, please contact us:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // fim do titulo
            // inicio dos textos contactos

            Container(
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '\nE-mail: riseup@gmail.com\n',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\nPhone: 259 999 999',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // fim dos textos contactos
          // fim da zona de contactos
        ],
      ),
    );
  }
}