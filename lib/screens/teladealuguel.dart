import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

var now = DateTime.now();
var firstDay = DateTime(now.year,now.month - 3, now.day);
var lastDay = DateTime(now.year,now.month + 3, now.day);


class TeladeAluguel extends StatefulWidget {
  TeladeAluguel ({Key? key}) : super (key: key);

  @override
  State<TeladeAluguel> createState() => _TeladeAluguelState();
}

class _TeladeAluguelState extends State<TeladeAluguel> {

  CalendarFormat format = CalendarFormat.twoWeeks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Aluguel"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TableCalendar(
            locale: 'pt',
              focusedDay: now,
              firstDay: firstDay,
              lastDay: lastDay,
            calendarFormat: format,
            startingDayOfWeek: StartingDayOfWeek.monday,

          )
        ],
      ),
    );
  }
}