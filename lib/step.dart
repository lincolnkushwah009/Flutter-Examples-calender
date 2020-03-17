//import 'package:flutter/material.dart';
//import 'package:fit_kit/fit_kit.dart';
//
//
//class Steps extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.amber,
//      ),
//      home: MyHomePage(title: 'FitKit Health Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  String result = '';
//  Map<DataType, List<FitData>> results = Map();
//  bool permissions;
//
//  RangeValues _dateRange = RangeValues(1, 8);
//  List<DateTime> _dates = List<DateTime>();
//  double _limitRange = 0;
//
//  DateTime get _dateFrom => _dates[_dateRange.start.round()];
//  DateTime get _dateTo => _dates[_dateRange.end.round()];
//  int get _limit => _limitRange == 0.0 ? null : _limitRange.round();
//
//  @override
//  void initState() {
//    super.initState();
//
//    final now = DateTime.now();
//    _dates.add(null);
//    for (int i = 7; i >= 0; i--) {
//      _dates.add(DateTime(
//        now.year,
//        now.month,
//        now.day,
//      ).subtract(Duration(days: i)));
//    }
//    _dates.add(null);
//
//    hasPermissions();
//  }
//
//  Future<void> read() async {
//    results.clear();
//
//    try {
//      permissions = await FitKit.requestPermissions(DataType.values);
//      if (!permissions) {
//        result = 'requestPermissions: failed';
//      } else {
//        for (DataType type in DataType.values) {
//          results[type] = await FitKit.read(
//            type,
//            dateFrom: _dateFrom,
//            dateTo: _dateTo,
//            limit: _limit,
//          );
//        }
//
//        result = 'readAll: success';
//      }
//    } catch (e) {
//      result = 'readAll: $e';
//    }
//
//    setState(() {});
//  }
//
//  Future<void> revokePermissions() async {
//    results.clear();
//
//    try {
//      await FitKit.revokePermissions();
//      permissions = await FitKit.hasPermissions(DataType.values);
//      result = 'revokePermissions: success';
//    } catch (e) {
//      result = 'revokePermissions: $e';
//    }
//
//    setState(() {});
//  }
//
//  Future<void> hasPermissions() async {
//    try {
//      permissions = await FitKit.hasPermissions(DataType.values);
//    } catch (e) {
//      result = 'hasPermissions: $e';
//    }
//
//    if (!mounted) return;
//
//    setState(() {});
//  }
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    final items =
//    results.entries.expand((entry) => [entry.key, ...entry.value]).toList();
//
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('FitKit Example'),
//        ),
//        body: Container(
//          padding: EdgeInsets.symmetric(horizontal: 16),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: [
//              Padding(padding: EdgeInsets.symmetric(vertical: 8)),
//              Text(
//                  'Date Range: ${_dateToString(_dateFrom)} - ${_dateToString(_dateTo)}'),
//              Text('Limit: $_limit'),
//              Text('Permissions: $permissions'),
//              Text('Result: $result'),
//              _buildDateSlider(context),
//              _buildLimitSlider(context),
//              _buildButtons(context),
//              Expanded(
//                child: ListView.builder(
//                  itemCount: items.length,
//                  itemBuilder: (context, index) {
//                    final item = items[index];
//                    if (item is DataType) {
//                      return Padding(
//                        padding: EdgeInsets.symmetric(vertical: 8),
//                        child: Text(
//                          '$item - ${results[item].length}',
//                          style: Theme.of(context).textTheme.title,
//                        ),
//                      );
//                    } else if (item is FitData) {
//                      return Padding(
//                        padding: EdgeInsets.symmetric(
//                          vertical: 4,
//                          horizontal: 8,
//                        ),
//                        child: Text(
//                          '$item',
//                          style: Theme.of(context).textTheme.caption,
//                        ),
//                      );
//                    }
//
//                    return Container();
//                  },
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  String _dateToString(DateTime dateTime) {
//    if (dateTime == null) {
//      return 'null';
//    }
//
//    return '${dateTime.day}.${dateTime.month}.${dateTime.year}';
//  }
//
//  Widget _buildDateSlider(BuildContext context) {
//    return Row(
//      children: [
//        Text('Date Range'),
//        Expanded(
//          child: RangeSlider(
//            values: _dateRange,
//            min: 0,
//            max: 9,
//            divisions: 10,
//            onChanged: (values) => setState(() => _dateRange = values),
//          ),
//        ),
//      ],
//    );
//  }
//
//  Widget _buildLimitSlider(BuildContext context) {
//    return Row(
//      children: [
//        Text('Limit'),
//        Expanded(
//          child: Slider(
//            value: _limitRange,
//            min: 0,
//            max: 4,
//            divisions: 4,
//            onChanged: (newValue) => setState(() => _limitRange = newValue),
//          ),
//        ),
//      ],
//    );
//  }
//
//  Widget _buildButtons(BuildContext context) {
//    return Row(
//      children: [
//        Expanded(
//          child: FlatButton(
//            color: Theme.of(context).accentColor,
//            textColor: Colors.white,
//            onPressed: () => read(),
//            child: Text('Read'),
//          ),
//        ),
//        Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
//        Expanded(
//          child: FlatButton(
//            color: Theme.of(context).accentColor,
//            textColor: Colors.white,
//            onPressed: () => revokePermissions(),
//            child: Text('Revoke permissions'),
//          ),
//        ),
//      ],
//    );
//  }
//}