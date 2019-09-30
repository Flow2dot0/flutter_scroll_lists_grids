import 'package:flutter/material.dart';
import 'package:flutter_scrolling_lists_grids/widgets/custom_text.dart';

class DismissiblePage extends StatefulWidget {

  @override
  _DismissiblePageState createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
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
        title: CustomText("Dismissible", color: Colors.white,),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: myActivities.length,
            itemBuilder: (context, i) {
            Activity currentActivity = myActivities[i];
            String key = currentActivity.name;
              return Dismissible(
                  key: Key(key),
                  child: ListTile(
                    title: CustomText("Activité : ${currentActivity.name}", textAlign: TextAlign.left,),
                    trailing: Icon(currentActivity.icon),
                    leading: Icon(currentActivity.icon),
                  ),
                background: Container(
                  padding: EdgeInsets.only(right: 20.0),
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      CustomText("Supprimer", color: Colors.white,),
                      Icon(Icons.delete, color: Colors.white,)
                    ],
                  ),
                ),
                onDismissed: (direction) {
                    setState(() {
                      print(currentActivity.name);
                      myActivities.removeAt(i);
                    });
                },
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