import 'package:flutter/material.dart';
import 'package:flutter_picker/picker.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/widget/button_widget.dart';
import '../widget/dialog.dart';
import '../widget/plants_box.dart';
import '../widget/plants_details.dart';

class RemainderScreensecond extends StatefulWidget {
  static const String id = "RemainderScreen";

  const RemainderScreensecond({Key? key}) : super(key: key);

  @override
  State<RemainderScreensecond> createState() => _RemainderScreensecondState();
}

class _RemainderScreensecondState extends State<RemainderScreensecond>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool toggle = false;
  late PageController _pageController;
  int activePageIndex = 0;
  List<String> labels = [
    'Common Name',
    'Plant Type',
    'Mature Size',
    'Soil Ph',
    'Bloom Time',
    'Color',
    'Native Area',
    'Toxicity',
  ];

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/pexels11.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: kMainColor,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showMainAlertDialog(context);
                          },
                          icon: const Icon(
                            Icons.info_outline,
                            color: kMainColor,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  top: 160,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 12),
                    decoration: BoxDecoration(
                      color: kWhitColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 0.2,
                          offset: Offset(
                            0.0, // Move to right 5  horizontally
                            1.0, // Move to bottom 5 Vertically
                          ),
                        ),
                      ],
                      border: Border.all(
                        color: kBoxColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            'plant name',
                            style: kDetailsGreenBoldTextStyle,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              'Common Name: ',
                              style: kDetailsGreenTextStyle,
                            ),
                            Text(' plant name ', style: kDetailsGreenTextStyle),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            color: kWhitColor,
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.grey[200],
              unselectedLabelColor: kMainColor,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  3,
                ),
                color: kMainColor,
              ),
              tabs: const [
                Tab(
                  text: 'REMINDERS',
                ),
                Tab(
                  text: 'ABOUT PLANT',
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Text(
                              'Every 3 days ',
                              style: kDetailsBlackTextStyle,
                            ),
                          ),
                          Switch(
                            // This bool value toggles the switch.
                            value: toggle,
                            activeColor: kMainColor,
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                toggle = value;
                                showPickerCustomizeUI(context);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(''),
                              Text(
                                '2',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(''),

                              // Container(
                              //     padding: const EdgeInsets.all(12),
                              //     width: 80,
                              //     child: const Text(
                              //       'Every',
                              //       style: TextStyle(fontSize: 20),
                              //     )),
                              // SizedBox(
                              //   width: 50,
                              //   child: CupertinoPicker(
                              //     itemExtent: 45,
                              //     onSelectedItemChanged: (int value) {
                              //       print(value);
                              //     },
                              //     children: const [
                              //       Text('2'),
                              //       Text('3'),
                              //       Text('4'),
                              //     ],
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 200,
                              //   child: CupertinoPicker(
                              //     itemExtent: 45,
                              //     onSelectedItemChanged: (int value) {
                              //       print(value);
                              //     },
                              //     children: const [
                              //       Text(
                              //         'Days',
                              //       ),
                              //       Text('Weeks'),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(8.0),
                          color: const Color(0xffD0DFCF),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Every',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'days',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(''),
                                Text(
                                  '4',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'weeks',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ButtonWidget(text: 'Save', onPressed: () {}),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: PlantDetails()),
                    Flexible(
                      flex: 1,
                      child: ListView.builder(
                          itemCount: labels.length,
                          itemBuilder: (context, index) {
                            return PlantsBox(
                                label: labels[index], data: 'test data');
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showPickerCustomizeUI(BuildContext context) {
    final itemExtent = 42.0;
    final bgColor = Colors.greenAccent.shade700;
    final txtColor = Colors.white;
    final txtStyle = TextStyle(color: txtColor);
    final selectColor = Colors.black.withOpacity(0.20);
    final delimiterChild = Align(
      alignment: Alignment.center,
      child: Container(width: 50, height: itemExtent, color: selectColor),
    );
    Picker(
        itemExtent: itemExtent,
        backgroundColor: Colors.transparent,
        containerColor: bgColor,
        selectionOverlay: Container(height: itemExtent, color: selectColor),
        headerDecoration: BoxDecoration(color: Colors.black.withOpacity(0.05)),
        textStyle: txtStyle,
        cancelTextStyle: txtStyle,
        confirmTextStyle: txtStyle,
        selectedTextStyle: TextStyle(color: txtColor, fontSize: 20),
        adapter: DateTimePickerAdapter(type: PickerDateTimeType.kHM),
        delimiter: [
          PickerDelimiter(column: 0, child: delimiterChild),
          PickerDelimiter(
              column: 2,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 15,
                  height: itemExtent,
                  color: selectColor,
                  alignment: Alignment.center,
                  child: Text(':',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: txtColor)),
                ),
              )),
          PickerDelimiter(column: 4, child: delimiterChild),
        ],
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
          child: Text("Select Time", style: txtStyle),
        ),
        onConfirm: (Picker picker, List value) {
          print(picker.adapter.text);
        }).showModal(context, builder: (context, view) {
      return Material(
          elevation: 0.0,
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: view,
          ));
    }, backgroundColor: Colors.transparent);
  }

  showPickerDateCustom(BuildContext context) {
    Picker(
        hideHeader: true,
        adapter: DateTimePickerAdapter(
          customColumnType: [2, 1, 0, 3, 4],
        ),
        title: Text("Select Data"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        onBuilderItem: (context, text, child, selected, col, index) {
          if (col == 0 || selected) return null;
          return Text(text ?? '',
              style: TextStyle(
                color: Colors.green,
              ));
        },
        onConfirm: (Picker picker, List value) {
          print((picker.adapter as DateTimePickerAdapter).value);
        }).showDialog(context);
  }

  showPickerNumber(BuildContext context) {
    Picker(
        adapter: NumberPickerAdapter(data: [
          const NumberPickerColumn(begin: 0, end: 999),
          const NumberPickerColumn(begin: 100, end: 200),
        ]),
        delimiter: [
          PickerDelimiter(
              child: Container(
            width: 30.0,
            alignment: Alignment.center,
            child: const Icon(Icons.more_vert),
          ))
        ],
        hideHeader: true,
        title: const Text("Please Select"),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }).showDialog(context);
  }
}
