import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  String note, date;
  Color color;
  TaskCard(this.note, this.date, this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8.0), child: Container(
        decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromRGBO(120, 120, 120, 1), width: 1),
            borderRadius: BorderRadius.circular(20.0)),
        child: ListTile(
          title: Align(
              alignment: Alignment.centerLeft,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                        width: 26,
                        child: Text(
                          note[0],
                          style: TextStyle(
                              fontFamily: "MaterialIcons",
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ))),
                Container(
                    width: 100,
                    child: Text(note,
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ])),
          trailing: Container(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(date),
                  Container(
                      width: 6,
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  width: 4,
                                  color: this.color))))
                ],
              )),
          onTap: () => {},
        )));
  }
}
