import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:list_project/professor.dart';
import 'package:list_project/ProfessorCard.dart';

List<Professor> professors = [
  Professor(name: "َAlavi", course: "C Programmin", gender: 'male', year: 2022),
  Professor(
      name: "Babaei", course: "Data Structure", gender: 'female', year: 2023),
  Professor(name: "Heidari", course: "Compiler", gender: 'female', year: 2020),
  Professor(name: "Ehsani", course: "Signal", gender: 'male', year: 2024)
];

class prof_stf extends StatefulWidget {
  @override
  State<prof_stf> createState() => _stf();
}

class _stf extends State<prof_stf> {
  TextEditingController nameController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 350,
            width: 200,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: TextField(
                      controller: genderController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Gender',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: TextField(
                      controller: courseController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Course',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: TextField(
                      controller: yearController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Year',
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: SizedBox(
                      height: 40,
                      width: 80,
                      child: Container(
                        color: Color.fromARGB(255, 231, 120, 112),
                        alignment: Alignment.center,
                        child: Text('Add',
                            style: TextStyle(
                                color: Colors
                                    .white)), // Change the color to your desired color
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        professors.add(
                          Professor(
                            name: nameController.text,
                            course: courseController.text,
                            gender: genderController
                                .text, // Fix: Use genderController.text here
                            year: int.parse(yearController.text),
                          ),
                        );

                        // Clear the text fields
                        nameController.text = '';
                        courseController.text = '';
                        genderController.text = '';
                        yearController.text = '';
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: professors.length,
                itemBuilder: (context, index) => Dismissible(
                  direction: DismissDirection.startToEnd,
                  key: Key(index.toString()),
                  child: profcardwidget(professors[index], () {
                    setState(() {
                      professors.removeAt(index);
                    });
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
