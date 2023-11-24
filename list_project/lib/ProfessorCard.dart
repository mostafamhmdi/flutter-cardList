import 'package:flutter/material.dart';
import 'package:list_project/professor.dart';

class profcardwidget extends StatelessWidget {
  Professor profes;
  VoidCallback fun;
  profcardwidget(this.profes, this.fun);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(174, 209, 141, 1),
      child: ListTile(
        leading: profes.gender == 'male'
            ? Icon(Icons.man_2, size: 50)
            : profes.gender == 'female'
                ? Icon(Icons.woman_2, size: 50)
                : Icon(Icons.face,
                    size:
                        50), // Handle other cases or set to null if there is no icon

        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Color.fromARGB(255, 231, 120, 112),
          ),
          onPressed: fun,
        ),
        title: Text(profes.name),
        subtitle: Text(profes.course + " " + profes.year.toString()),
      ),
    );
  }
}
