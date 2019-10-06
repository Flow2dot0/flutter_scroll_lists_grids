import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_scrolling_lists_grids/widgets/custom_text.dart';

class CustomTilePage extends StatefulWidget {
  CustomTilePage({Key key}) : super(key: key);

  @override
  _CustomTilePageState createState() => _CustomTilePageState();
}

class _CustomTilePageState extends State<CustomTilePage> {
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
    //get the orientation device
    Orientation orientation = MediaQuery.of(context).orientation;
    print(orientation);
    return Scaffold(
      appBar: AppBar(
        title: CustomText("CustomTile", color: Colors.white,),
      ),
      body: Center(
        child: (orientation==Orientation.portrait? widgetslist() : widgetsGrid())
      ),
    );
  }

  Widget widgetsGrid() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: myActivities.length,
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.all(2.5),
            child: Card(
              elevation: 10.0,
              child: InkWell(
                onTap: (()=> print("tapped grid")),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CustomText("Activité : ", color: Colors.blue, factor: 0.75,),
                    Icon(myActivities[i].icon, color: Colors.blue, size: 45.0,),
                    CustomText(myActivities[i].name, color: Colors.blue, factor: 1.5, italic: true,)
                  ],
                ),
              ),
            ),
          );
        }
    );
  }

  Widget widgetslist() {
    return ListView.builder(
        itemCount: myActivities.length,
        itemBuilder: (context, i) {
          Activity currentActivity = myActivities[i];
          String key = currentActivity.name;
          return Dismissible(
            key: Key(key),
            child: Container(
              height: 125.0,
              padding: EdgeInsets.all(5.0),
              child: Card(
                elevation: 7.5,
                child: InkWell(
                  onTap: (()=> print("tapped")),
                  onLongPress: (()=> print("long pressed")),
                  onDoubleTap: (()=> print("double tapped")),
                  onHover: (bool b)=> print("hovered $b"),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(currentActivity.icon, color: Colors.blue, size: 75.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CustomText("Activité : ", color: Colors.blue[100], factor: 1.5,),
                            CustomText(currentActivity.name, color: Colors.blue[700], factor: 2,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
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
    );
  }
}

class Activity {
  String name;
  IconData icon;

  Activity(this.name, this.icon);

}