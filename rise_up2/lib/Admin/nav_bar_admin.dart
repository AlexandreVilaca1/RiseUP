import 'package:flutter/material.dart';

import 'package:rise_up2/Pages/Profile/edit_profile.dart';

import '../Pages/Missions/main_page.dart';
import '../Pages/Support/support_page.dart';



class NavBarAdmin extends StatelessWidget {
  const NavBarAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Admin'),
            accountEmail: const Text('admin@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/images/michael_scott_header.png')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_sharp),
            title: const Text('Missions'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainPage(),
                ),
              ); 
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfile(),
                ),
              ); 
            },
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          const ListTile(
            leading:  Icon(Icons.history_edu),
            title:  Text('Users'),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const ContributionScreen(),
            //     ),
            //   ); 
            // },
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          ListTile(
            leading: const Icon(Icons.support_agent_outlined),
            title: const Text('Support'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SupportPage(),
                ),
              ); 
            },
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          const ListTile(
            leading:  Icon(Icons.exit_to_app),
            title:  Text('Exit'),
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          const Column(
            children: [
              SizedBox(
                height: 300,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
