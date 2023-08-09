import 'package:flutter/material.dart';
import 'current_date_time.dart';

class DaysViewRoute extends StatefulWidget {
  const DaysViewRoute({super.key});
  
  @override
  State<StatefulWidget> createState() => _DaysViewRoute();
}

class _DaysViewRoute extends State<DaysViewRoute>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(month), centerTitle: true,
        leading: GestureDetector(
        onTap: () { 
          setState(() {
            currentDate.changeMonth(-1);
            month = currentDate.getCurrentMonth();
          });
          
           },
        child: const Icon(
        Icons.arrow_back,  // add custom icons also
            ),
          ),
          actions: <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            currentDate.changeMonth(1);
            month = currentDate.getCurrentMonth();
          });
        },
        child: const Icon(
          Icons.arrow_forward,
          size: 26.0,
        ),
      )
    ),
  ],
      ),
      
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }

  final currentDate = CurrentDateTime();
  var month = "";
}