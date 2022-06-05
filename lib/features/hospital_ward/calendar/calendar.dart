import 'package:admin_app/features/hospital/reservation_doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/widgets/button_widget.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:admin_app/features/hospital_ward/time_of_the_visit/time_of_the_visit_screen.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  var _focusedCalendarDate = DateTime.now();
  DateTime? selectedCalendarDate;

  void fun(selectedCalendarDate) {
    print(selectedCalendarDate);
  }

  @override
  void initState() {
    selectedCalendarDate = _focusedCalendarDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Informacja o oddzale',
          style: TextStyle(
            color: Color(0xFF263139),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFF263139),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 75),
                Container(
                  margin: EdgeInsets.all(28.0),
                  color: Color(0xFFE5E9EC),
                  child: TableCalendar(
                    locale: 'pl_PL',
                    focusedDay: DateTime.now(),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    headerStyle: HeaderStyle(
                      titleCentered: true,
                      formatButtonVisible: false,
                      titleTextFormatter: (date, locale) =>
                          DateFormat.yMMMM(locale).format(date),
                    ),
                    calendarFormat: CalendarFormat.month,
                    weekendDays: [DateTime.sunday, 6],
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    daysOfWeekStyle: DaysOfWeekStyle(
                      dowTextFormatter: (date, locale) =>
                          DateFormat.E(locale).format(date),
                    ),
                    calendarStyle: CalendarStyle(
                      todayDecoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      todayTextStyle: TextStyle(
                        color: Color(0xFF4DAF8C),
                        fontSize: 20,
                      ),
                      selectedDecoration: BoxDecoration(
                        color: Color(0xFF4DAF8C),
                        shape: BoxShape.circle,
                      ),
                      weekendTextStyle: TextStyle(
                        fontSize: 20,
                      ),
                      defaultTextStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    daysOfWeekHeight: 40.0,
                    rowHeight: 40.0,
                    selectedDayPredicate: (currentSelectedDate) {
                      // as per the documentation 'selectedDayPredicate' needs to determine current selected day.
                      return (isSameDay(
                          selectedCalendarDate!, currentSelectedDate));
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      // as per the documentation
                      if (!isSameDay(selectedCalendarDate, selectedDay)) {
                        setState(
                          () {
                            selectedCalendarDate = selectedDay;
                            _focusedCalendarDate = focusedDay;
                          },
                        );
                      }
                    },
                    //  daysOfWeekStyle: DaysOfWeekStyle(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          ButtonWidget(
            text: 'WYBIERZ DATĘ',
            colorText: Colors.black,
            colorButton: Colors.white,
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ReservationDoctorScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
