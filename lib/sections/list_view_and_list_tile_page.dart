import 'package:flutter/material.dart';
import 'package:flutter_scrolling_lists_grids/widgets/custom_text.dart';

class ListViewAndListTilePage extends StatefulWidget {
  @override
  _ListViewAndListTilePageState createState() => _ListViewAndListTilePageState();
}

class _ListViewAndListTilePageState extends State<ListViewAndListTilePage> {

  List<Activity> myActivities = [
    Activity("Vélo", Icons.directions_bike),
    Activity("Peinture", Icons.palette),
    Activity("Golf", Icons.golf_course),
    Activity("Arcade", Icons.gamepad),
    Activity("Fitness", Icons.fitness_center),
    Activity("Vélo", Icons.directions_bike),
    Activity("Peinture", Icons.palette),
    Activity("Golf", Icons.golf_course),
    Activity("Arcade", Icons.gamepad),
    Activity("Fitness", Icons.fitness_center),
    Activity("Vélo", Icons.directions_bike),
    Activity("Peinture", Icons.palette),
    Activity("Golf", Icons.golf_course),
    Activity("Arcade", Icons.gamepad),
    Activity("Fitness", Icons.fitness_center),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("ListView et ListTile", color: Colors.white,),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: myActivities.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: CustomText("Activité : ${myActivities[i].name}", textAlign: TextAlign.left,),
                trailing: Icon(myActivities[i].icon),
                leading: Icon(myActivities[i].icon),
              );
            }
        ),
      ),
    );
  }
}

class Activity {
  String name;
  IconData icon;

  Activity(this.name, this.icon);

}