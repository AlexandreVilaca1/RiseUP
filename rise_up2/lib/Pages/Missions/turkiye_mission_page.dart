import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Data/list_missions.dart';
import '../../models/missions.dart';
import '../../widgets/ImagesWidget/images.dart';
import '../../widgets/TextWidgets/description_text.dart';
import '../../widgets/TextWidgets/mission_title_text.dart';
import '../../widgets/ButtonsWidgets/segmentedcontrollapp.dart';
import '../../widgets/TextWidgets/type_donation_title.dart';
import 'main_page.dart';

class TurkieMissionPage extends StatefulWidget {
  const TurkieMissionPage({Key? key}) : super(key: key);
  

  @override
  State<TurkieMissionPage> createState() => _TurkieMissionPage();
}

class _TurkieMissionPage extends State<TurkieMissionPage> {
  final json = FetchDataMissions.fetchMissions();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: FutureBuilder<List<Missions>>(
        future: json,
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

          List<Missions> missions = snapshot.data!;
        return Scaffold(
        appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainPage(),
              ),
            );
          },
        ),
        
        backgroundColor: Colors.white,
        title: const Text(
          'Turkye Mission',
          style: TextStyle(color: Colors.black),
        ),
      ),
      
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Images(imagePath: 'assets/images/turkiye_earthquake.png'),
           MissionTitleText(text: 'Turkiye Mission'),
           DescriptionTextWidget(missionId: 1, 
                  missionList: json,),
           TypeDonationTitle(text: 'How you would like to donate?'),
           SegmentedControlApp(),
        ],
      ),
    );
        }
      )
      );
  }
}
