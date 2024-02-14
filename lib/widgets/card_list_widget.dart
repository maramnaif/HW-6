import 'package:flutter/material.dart';
import 'package:hw6_maram_alharthi/models/person.dart';

class CardLisWidget extends StatelessWidget {
  const CardLisWidget({super.key, required this.person});
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/user.jpg',
            height: 60,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                person.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 0,
              ),
              Text(
                person.email,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
