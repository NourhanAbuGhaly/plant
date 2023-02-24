import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/model/plant_model.dart';
import 'package:plant/widget/widget.dart';

class RimenderScreen extends StatefulWidget {
  const RimenderScreen({Key? key}) : super(key: key);

  @override
  State<RimenderScreen> createState() => _RimenderScreenState();
}

class _RimenderScreenState extends State<RimenderScreen> {
  DateTime SelectToDay = DateTime.now();
  late List<CleanCalendarEvent> SelectedEvent;
  final Map<DateTime, List<CleanCalendarEvent>> event = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
      CleanCalendarEvent("Event a",
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          description: "A Special Event ",
          color: kMainColor)
    ]
  };
  List<MyPlants> ListPlants1 = [
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption")
  ];

  void _handldate(date) {
    setState(() {
      SelectToDay = date;
      SelectedEvent = event[SelectToDay] ?? [];
    });
    print(SelectToDay);
  }

  @override
  void initState() {
    SelectedEvent = event[SelectToDay] ?? [];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTitleWidget(title: "Rimender", subtitle: "TO DO LIST ", onTap: () {}),
        Expanded(flex: 4,
          child: Calendar(
            startOnMonday: true,
            selectedColor: KprimaryColor,
            todayColor: kMainColor,
            eventColor: kMainColor,
            eventDoneColor: kMainColor,
            bottomBarColor: kMainColor,
            onRangeSelected: (range) {
              print("Selected To Day ${range.from} ${range.to}");
            },
            onDateSelected: (date) {
              return _handldate(date);
            },
            events: event,
            isExpanded: true,
            dayOfWeekStyle: TextStyle(
                fontSize: 20, color: Colors.black12, fontWeight: FontWeight.w100),
            bottomBarTextStyle: TextStyle(color: kMainColor),
            hideBottomBar: false,
            hideArrows: false,
            weekDays: ['Mon', 'Tus', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Text(
            "Today Tasks",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: kMainColor),
          ),
        ),
        MyContainer(ListPlants: ListPlants1)
      ],
    );
  }
}
