import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

var now = DateTime.now();
var firstDay = DateTime(now.year,now.month - 3, now.day);
var lastDay = DateTime(now.year,now.month + 3, now.day);

class TeladeAluguel extends StatefulWidget {
  const TeladeAluguel ({Key? key}) : super (key: key);

  @override
  State<TeladeAluguel> createState() => _TeladeAluguelState();
}

class _TeladeAluguelState extends State<TeladeAluguel> {

  CalendarFormat format = CalendarFormat.twoWeeks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela de Aluguel"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TableCalendar(
              focusedDay: now,
              firstDay: firstDay,
              lastDay: lastDay,
              calendarFormat: format,
              startingDayOfWeek: StartingDayOfWeek.sunday,
              availableCalendarFormats: const {
                CalendarFormat.week: 'Semana',
                CalendarFormat.month: 'Mês',
                CalendarFormat.twoWeeks: '2 Semanas'
              },
            headerStyle: HeaderStyle(
              leftChevronIcon: const Icon(
                Icons.chevron_left,
                size: 24,
                color: Colors.black87,),
              rightChevronIcon: const Icon(
                Icons.chevron_right,
                size: 24,
                color: Colors.black87,),
              headerPadding: EdgeInsets.zero,
              formatButtonVisible: true,
              formatButtonShowsNext: false,
              formatButtonDecoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),

              ),
              formatButtonTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              titleTextStyle: const TextStyle(
                color: Colors.blueGrey,
              ),
              titleCentered: true,
            ),
              calendarStyle: const CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.rectangle,
              ),
                selectedTextStyle: TextStyle(
                  color: Colors.deepPurple,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape:  BoxShape.rectangle,
                ),
                todayTextStyle: TextStyle(
                  color: Colors.white,
                ),
                
                defaultDecoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                ),
                defaultTextStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                weekendDecoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,

                ),
                weekendTextStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
            ),
            calendarBuilders: CalendarBuilders(
              dowBuilder: (context, day){
                String text;
                //ifs para verificar quais dias da semana estão sendo trabalhados
                //Traduzindo o calendário para Português
                if (day.weekday == DateTime.sunday){
                  text = 'Dom';
                }else if (day.weekday == DateTime.monday){
                  text = 'Seg';
                }else if (day.weekday == DateTime.tuesday){
                  text = 'Ter';
                }else if (day.weekday == DateTime.wednesday){
                  text = 'Qua';
                }else if (day.weekday == DateTime.thursday){
                  text = 'Qui';
                }else if (day.weekday == DateTime.friday){
                  text = 'Sex';
                }else if (day.weekday == DateTime.saturday){
                  text = 'Sáb';
                }else {
                  text = 'err';
                }
                return Center(
                  child: Text(text,style: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                  ),
                );

              }
            ),
          )
        ],
      ),
    );
  }
}