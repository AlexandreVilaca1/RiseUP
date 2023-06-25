class Missions {
  int id_mission;
  String mission_name;
  String description_mission;
  DateTime date_mission;
  String locality;
  String state_mission;
  int financed_amount;


  Missions(
      this.id_mission,
      this.mission_name,
      this.description_mission,
      this.date_mission,
      this.locality,
      this.state_mission,
      this.financed_amount,);

  factory Missions.fromJson(Map<String, dynamic> json) {
    return Missions(
        json['id_mission'],
        json['mission_name'],
        json['description_mission'],
        DateTime.parse(json['date_mission']),
        json['locality'],
        json['state_mission'],
        json['financed_amount']
        );
        
  }
}
