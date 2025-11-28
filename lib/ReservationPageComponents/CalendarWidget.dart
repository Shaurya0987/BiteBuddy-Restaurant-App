import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarContainer extends StatefulWidget {
  const CalendarContainer({super.key});

  @override
  State<CalendarContainer> createState() => _CalendarContainerState();
}

class _CalendarContainerState extends State<CalendarContainer> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;   // 💡 update selected date
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TableCalendar(
        locale: "en_US",
        rowHeight: 43,

        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        ),

        availableGestures: AvailableGestures.all,

        selectedDayPredicate: (day) => isSameDay(day, today),

        focusedDay: today,
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),

        onDaySelected: _onDaySelected,
      ),
    );
  }
}
