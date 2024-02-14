import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw6_maram_alharthi/controller/user_data.dart';
import 'package:hw6_maram_alharthi/models/person.dart';
import 'package:hw6_maram_alharthi/widgets/button_widget.dart';
import 'package:hw6_maram_alharthi/widgets/card_list_widget.dart';
import 'package:hw6_maram_alharthi/widgets/text_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userData = GetIt.I.get<UserData>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 184, 174),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(children: [
            TextFieldWidget(
              label: "Name",
              controller: controllerName,
            ),
            TextFieldWidget(
              label: "Email",
              controller: controllerEmail,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              text: "Add",
              onPressed: () {
                Person person = Person(
                    name: controllerName.text, email: controllerEmail.text);
                userData.addUser(person);
                setState(() {});
              },
            ),
            ButtonWidget(
              text: "Clear List",
              onPressed: () {
                userData.clearList();
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (Person person in userData.allUsers)
                    CardLisWidget(
                      person: person,
                    )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
