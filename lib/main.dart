import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _name = 'Hi Peeyush';
  var _rupee = 1500000;
  var _usd = 2123;
  var _gbp = 32840;
  var _eur = 7623818;
  var _aed = 23324;
  int currentindex;
  var _recentTransactionValue = '10000001';
  Size size;

  var _recentTransactionCurrency = 'INR';

  var _selectedItemPosition = 2;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    children: [
                      _mainCard(),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      _mainActionsNew(),
                      _recentTransectionNew(),
                      SizedBox(
                        height: 10,
                      ),
                      _transactionNew(),
                    ],
                  ),
                ),
              ),
            ),
            _footer()
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _mainActions() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 70,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  ImageIcon(AssetImage(
                      'assets/res/outline_file_upload_black_48.png')),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'SEND\nMONEY',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            DottedLine(
              direction: Axis.vertical,
              lineLength: 50,
              lineThickness: 1.0,
              dashLength: 50.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 0.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
            Expanded(
              child: Column(
                children: [
                  ImageIcon(AssetImage(
                      'assets/res/outline_file_download_black_48.png')),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ADD\nMONEY',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            DottedLine(
              direction: Axis.vertical,
              lineLength: 50,
              lineThickness: 1.0,
              dashLength: 50.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 00,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.account_balance_outlined),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'WITHDRAW\nMONEY',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            DottedLine(
              direction: Axis.vertical,
              lineLength: 50,
              lineThickness: 1.0,
              dashLength: 50.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 0.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.swap_horiz_sharp),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'TRANSFER\nHISTORY',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mainActionsNew() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 9,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: Colors.black)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ImageIcon(AssetImage(
                          'assets/res/outline_file_upload_black_48.png')),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'SEND\nMONEY',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                DottedLine(
                  direction: Axis.vertical,
                  lineLength: 60,
                  lineThickness: 1.0,
                  dashLength: 60.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 0.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      ImageIcon(AssetImage(
                          'assets/res/outline_file_download_black_48.png')),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'ADD\nMONEY',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                DottedLine(
                  direction: Axis.vertical,
                  lineLength: 60,
                  lineThickness: 1.0,
                  dashLength: 60.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 0.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.account_balance_outlined),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'WITHDRAW\nMONEY',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                DottedLine(
                  direction: Axis.vertical,
                  lineLength: 60,
                  lineThickness: 1.0,
                  dashLength: 60.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 0.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.swap_horiz_sharp),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'TRANSFER\nHISTORY',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _mainCard() {
    return Stack(
      children: [
        Container(
          height: size.height * .35,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          alignment: Alignment.topCenter,
        ),
        Column(
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Row(
                children: [
                  Icon(
                    Icons.subject,
                    color: Colors.white,
                    size: 28,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        _name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Comfortaa'),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 50, 15, 20),
              child: Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '₹ $_rupee',
                              style: TextStyle(fontSize: 38),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Flag(
                                  'in',
                                  height: 30,
                                  width: 30,
                                ),
                                Text(
                                  'INR',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 00),
                      child: DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.grey[600],
                        dashRadius: 0.0,
                        dashGapLength: 0.0,
                        dashGapColor: Colors.transparent,
                        dashGapRadius: 0.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: Text(
                                    '\$',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Text(
                                  '$_usd',
                                  style: TextStyle(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'USD',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          DottedLine(
                            direction: Axis.vertical,
                            lineLength: 80,
                            lineThickness: 1.0,
                            dashLength: 1.0,
                            dashColor: Colors.grey[600],
                            dashRadius: 0.0,
                            dashGapLength: 0.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: Text(
                                    '£',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Text(
                                  '$_gbp',
                                  style: TextStyle(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'GBP',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          DottedLine(
                            direction: Axis.vertical,
                            lineLength: 80,
                            lineThickness: 1.0,
                            dashLength: 1.0,
                            dashColor: Colors.grey[600],
                            dashRadius: 0.0,
                            dashGapLength: 0.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: Text(
                                    '\€',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Text(
                                  '$_eur',
                                  style: TextStyle(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'EUR',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          DottedLine(
                            direction: Axis.vertical,
                            lineLength: 80,
                            lineThickness: 1.0,
                            dashLength: 1.0,
                            dashColor: Colors.grey[600],
                            dashRadius: 0.0,
                            dashGapLength: 0.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: Text(
                                    'د.إ',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Text(
                                  '$_aed',
                                  style: TextStyle(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'AED',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _recentTransection() {
    return Column(
      children: [
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 4.0,
          dashColor: Colors.black,
          dashRadius: 0.0,
          dashGapLength: 0.0,
          dashGapColor: Colors.transparent,
          dashGapRadius: 0.0,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Recent Transaction   :   $_recentTransactionValue  $_recentTransactionCurrency',
                  style: TextStyle(fontSize: 18, letterSpacing: 1.1),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 4.0,
          dashColor: Colors.black,
          dashRadius: 0.0,
          dashGapLength: 0.0,
          dashGapColor: Colors.transparent,
          dashGapRadius: 0.0,
        ),
      ],
    );
  }

  Widget _recentTransectionNew() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Recent Transaction   :   $_recentTransactionValue  $_recentTransactionCurrency',
                      style: TextStyle(fontSize: 18, letterSpacing: 1.1),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _transaction() {
    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var _historyTitle = 'MyGlobePay / to / Peeyush';
          var _historyId = 'RP-11314571INR';

          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: ImageIcon(AssetImage(
                                'assets/res/outline_file_upload_black_48.png',
                              )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '$_historyTitle',
                                    overflow: TextOverflow.clip,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '$_historyId',
                                    overflow: TextOverflow.clip,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('15000000'),
                          SizedBox(height: 3),
                          Text('15-12-2020'),
                          SizedBox(height: 3),
                          Text('07103'),
                        ],
                      )
                    ],
                  ),
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 0.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ],
            ),
          );
        });
  }

  Widget _transactionNew() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 10, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 9,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: Colors.black)),
        child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 00),
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var _historyTitle = 'MyGlobePay / to / Peeyush';
              var _historyId = 'RP-11314571INR';

              return Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: ImageIcon(AssetImage(
                                    'assets/res/outline_file_upload_black_48.png',
                                  )),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: size.width * .5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '$_historyTitle',
                                        overflow: TextOverflow.clip,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '$_historyId',
                                        overflow: TextOverflow.clip,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: size.width * .3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('15000000'),
                                  SizedBox(height: 3),
                                  Text('15-12-2020'),
                                  SizedBox(height: 3),
                                  Text('07103'),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    index == 9
                        ? Container()
                        : DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            dashRadius: 0.0,
                            dashGapLength: 0.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.pinned,
      snakeShape: SnakeShape.indicator,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      currentIndex: _selectedItemPosition,
      onTap: (index) => setState(() => _selectedItemPosition = index),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'ADD'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'SEND'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'OVERVIEW'),
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'WITHDRAW'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'TXN')
      ],
    );
  }

  _footer() {
    return DottedLine(
      direction: Axis.horizontal,
      lineLength: double.infinity,
      lineThickness: 1.0,
      dashLength: 4.0,
      dashColor: Colors.black,
      dashRadius: 0.0,
      dashGapLength: 0.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );
  }
}
