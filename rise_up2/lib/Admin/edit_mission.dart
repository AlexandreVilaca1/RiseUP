import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rise_up2/Data/fetch_mission_data.dart';
import 'package:rise_up2/models/missions.dart';


class EditMissionsPage extends StatefulWidget {
  final Missions missions;

  const EditMissionsPage({required this.missions, Key? key}) : super(key: key);

  @override
  _EditMissionsPageState createState() => _EditMissionsPageState();
}

class _EditMissionsPageState extends State<EditMissionsPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Missions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                initialValue: widget.missions.missionName,
                decoration: const InputDecoration(labelText: 'Missions Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name to the mission';
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    widget.missions.missionName = value;
                  }
                },
              ),
              TextFormField(
                initialValue: widget.missions.locality.toString(),
                decoration: const InputDecoration(labelText: 'Locality'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a locality to the mission';
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    widget.missions.descriptionMission = (value);
                  }
                },
              ),
              TextFormField(
                initialValue: widget.missions.stateMission,
                decoration: const InputDecoration(labelText: 'Nacionalidade'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Nacionalidade';
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    widget.missions.stateMission = value;
                  }
                },
              ),
              TextFormField(
                initialValue: widget.missions.dateMission.toString(),
                decoration: const InputDecoration(labelText: 'Mission Date'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a date to the mission';
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    widget.missions.dateMission = DateTime.parse(value);
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Updated Mission: ${widget.missions}');
                    FetchDataMissions.putMissions(widget.missions);
                  }
                },
                child: const Text('Update Mission'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
