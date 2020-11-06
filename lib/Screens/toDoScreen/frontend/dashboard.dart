import 'package:flutter/material.dart';
import 'package:mytodoapp/Screens/toDoScreen/backend/task.dart';
import 'package:mytodoapp/Screens/toDoScreen/backend/tasklist.dart';
import 'package:mytodoapp/Screens/toDoScreen/frontend/components/dashboard_custom_textfield.dart';
import 'package:mytodoapp/Screens/toDoScreen/frontend/components/dashboard_dateandtime_.dart';
import 'package:mytodoapp/Screens/toDoScreen/frontend/components/viewHolder.dart';

class MainDashboard extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainDashboard> {
  TaskList taskList = new TaskList();
  String chosenDate = "", chosenTime = "", title = "", desc = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white12,
        body: ListView.builder(
          itemCount: taskList.getTasksList().length,
          itemBuilder: (BuildContext ctxt, int index) {
            return new ViewHolder(taskList.getTasksList()[index].getTitle());
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onPressed: onButtonPressed,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }

  void onButtonPressed() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        backgroundColor: Colors.grey[850],
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter mystate) {
            return Container(
                height: MediaQuery.of(context).copyWith().size.height * 0.65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Icon(Icons.calendar_today, color: Colors.teal),
                      title: Text(
                        chosenDate + '           ' + chosenTime ?? '',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(Icons.timer, color: Colors.teal),
                    ),
                    DashboardCustomTextField(),
                    DashBoardDateTime(updated, mystate),
                    SizedBox(height: 10),
                    MaterialButton(
                      onPressed: () {
                        print("Title = " +
                            DashboardCustomTextField.getTitle().text);
                        print("Desc = " +
                            DashboardCustomTextField.getDesc().text);
                        setState(() {
                          taskList.addTaskToTheList(Task(
                              DashboardCustomTextField.getTitle().text,
                              DashboardCustomTextField.getDesc().text,
                              DateTime.now(),
                              TimeOfDay.now()));
                        });
                        print(taskList.getTasksList().first.getDesc());
                      },
                      color: Colors.teal,
                      child: Icon(Icons.save, size: 50, color: Colors.white),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    ),
                  ],
                ));
          });
        });
  }

  void updated(StateSetter updateState, {String date, String time}) {
    updateState(() {
      if (date != null) this.chosenDate = date;
      if (time != null) this.chosenTime = time;
    });
  }

  void setTitleForTask(String title) => this.title = title;

  void setDescriptionForTask(String desc) => this.desc = desc;
}
