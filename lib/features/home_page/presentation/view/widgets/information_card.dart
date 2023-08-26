import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListTile(
        title: Text(
          'Mohammed',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * .025,
              color: Colors.white),
        ),
        subtitle: Text(
          'Manager',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * .02,
              color: Colors.white),
        ),
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        iconColor: Colors.grey,
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      ),
    );
  }
}