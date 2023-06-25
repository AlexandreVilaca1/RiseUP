class CollectionPoints {
  int id_collection_point;
  String collection_point_name;
  String postal_code;
  String district;
  String city;
  String country;
  String street;
  int number_door;
  DateTime inicial_hour;
  DateTime end_hour;
  String week_days;

  CollectionPoints(
    this.id_collection_point,
    this.collection_point_name,
    this.postal_code,
    this.district,
    this.city,
    this.country,
    this.street,
    this.number_door,
    this.inicial_hour,
    this.end_hour,
    this.week_days,
  );
}
