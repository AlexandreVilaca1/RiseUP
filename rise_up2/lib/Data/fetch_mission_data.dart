import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rise_up2/models/missions.dart'; 

class FetchDataMissions {
  static Future<List<Missions>> fetchMissions () async {
    Iterable iterable;
    List<Missions> missions;

    const url = 'http://10.0.2.2:7014/api/Missions';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    iterable = json.decode(response.body);
    missions = List<Missions>.from(iterable.map((e) => Missions.fromJson(e)));
    return missions;
}

static Future<void> putMissions(Missions missions) async {
  const apiUrl = 'http://10.0.2.2:7209/api/Missions'; 
   final updateUrl = apiUrl + missions.idMission.toString();

  final body = {
    'nome_jogador': missions.missionName.toString(),
    'dt_nasc': missions.dateMission.toString(),
    'nacionalidade': missions.descriptionMission.toString(),
    'email': missions.locality.toString(),
    'id_equipa': missions.stateMission.toString()
  };
 }
}
