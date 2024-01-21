// calendar.dart

// import 'top_appbar.dart';
import 'package:daycanvas_front/body_appbar.dart';
import 'package:daycanvas_front/bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatelessWidget {
  List<String> days = ['_', '월', '화', '수', '목', '금', '토', '일'];
  String locale = 'ko-KR';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(title: 'DayCanvas'),
      body: CustomBodyAppBar(
        child: Container(
          margin: const EdgeInsets.only(top: 80),
          child: TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime(2024),
            lastDay: DateTime(2030),
            // locale: 'ko-KR',
            daysOfWeekHeight: 80,
            rowHeight: 60,
            availableGestures: AvailableGestures.horizontalSwipe,
            
            // 아래는 커스텀 부분

            // 헤더(년월)
            headerStyle: const HeaderStyle(
              // title
              formatButtonVisible: false,

              // chevron
              leftChevronVisible: false,
              rightChevronVisible: false,

              // header
              headerMargin: EdgeInsets.only(left: 32, bottom: 10),
            ),

            // 캘린더
            calendarBuilders: CalendarBuilders(
              // 타이틀
              headerTitleBuilder: (context, day) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat.yMMMM(locale).format(day),
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffc4c2d1),
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 5.0,
                            color: Color.fromRGBO(25, 25, 25, 1.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text('겨울의 어느날',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffc4c2d1),
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 5.0,
                            color: Color.fromRGBO(25, 25, 25, 1.0),
                          ),
                        ],
                      ),
                    ),
                    const Text('당신은 어떤 하루를 보냈나요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffc4c2d1),
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 5.0,
                            color: Color.fromRGBO(25, 25, 25, 1.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              // 요일
              dowBuilder: (context, day) {
                return Center(
                    heightFactor: 50,
                    child: Text(
                      days[day.weekday],
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white70,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 5.0,
                            color: Color.fromRGBO(30, 30, 30, 1.0),
                          ),
                        ],
                      ),
                    )
                );
              },

              defaultBuilder: (context, date, events) {
                return Column(
                  children: [
                    Text(
                      '${date.day}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromRGBO(30, 30, 30, 1.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 1),
                    Container(
                      // 이미지를 추가
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: const Color(0xfff5e8c7),
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Color.fromRGBO(70, 70, 70, 1.0),
                            spreadRadius: 0,
                            blurRadius: 3.0,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(height: 1),
                  ],
                );
              },
            ),
            
            // 전체적인 캘린더 스타일
            calendarStyle: const CalendarStyle(
              isTodayHighlighted: false,
              // outsideDay
              outsideDaysVisible: false,
              // outsideTextStyle: TextStyle(
              //   color: Color(0xff464646),
              // ),

              // weekend
              weekendTextStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ]
              ),

              // defaultDay
              defaultTextStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ]
              ),

              tablePadding: EdgeInsets.symmetric(horizontal: 20),
              // cellMargin: EdgeInsets.all(5),
            ),
          ),
        )
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
