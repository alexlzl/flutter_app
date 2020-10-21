//import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/test/single/Align.dart';
import 'package:flutter_app/test/single/AspectRatio.dart';
import 'package:flutter_app/test/single/Baseline.dart';
import 'package:flutter_app/test/single/Center.dart';
import 'package:flutter_app/test/single/ConstrainedBox.dart';
import 'package:flutter_app/test/single/Container.dart';
import 'package:flutter_app/test/single/CustomSingleChildLayout.dart';
import 'package:flutter_app/test/single/FittedBox.dart';
import 'package:flutter_app/test/single/FractionallySizedBox.dart';
import 'package:flutter_app/test/single/IntrinsicHeight.dart';
import 'package:flutter_app/test/single/IntrinsicWidth.dart';
import 'package:flutter_app/test/single/LimitedBox.dart';
import 'package:flutter_app/test/single/Offstage.dart';
import 'package:flutter_app/test/single/OverflowBox.dart';
import 'package:flutter_app/test/single/Padding.dart';
import 'package:flutter_app/test/single/SizedBox.dart';
import 'package:flutter_app/test/single/SizedOverflowBox.dart';
import 'package:flutter_app/test/single/Transform.dart';

import 'multi/Column.dart';
import 'multi/CustomMultiChildLayout.dart';
import 'multi/Flow.dart';
import 'multi/GridView.dart';
import 'multi/IndexedStack.dart';
import 'multi/ListBody.dart';
import 'multi/ListView.dart';
import 'multi/Row.dart';
import 'multi/Stack.dart';
import 'multi/Table.dart';
import 'multi/Wrap.dart';

void main() => runApp(new MyApp());

const List<String> singleLayoutWidgets = [
  "Container",
  "Padding",
  "Center",
  "Align",
  "FittedBox",
  "AspectRatio",
  "ConstrainedBox",
  "Baseline",
  "FractionallySizedBox",
  "IntrinsicHeight",
  "IntrinsicWidth",
  "LimitedBox",
  "Offstage",
  "OverflowBox",
  "SizedBox",
  "SizedOverflowBox",
  "Transform",
  "CustomSingleChildLayout",
];

const List<String> multiLayoutWidgets = [
  "Row",
  "Column",
  "Stack",
  "IndexedStack",
  "GridView",
  "Flow",
  "Table",
  "Wrap",
  "ListBody",
  "ListView",
  "CustomMultiChildLayout",
];

/**
 *
 * 它是一个名为_的变量，通常是因为你不打算使用它，然后扔掉它。例如，您可以使用名称x或foo代替。(_)和()之间的区别很简单，一个函数接受参数，而另一个函数不接受。
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Layout Demo',
      theme: new ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Colors.yellow),
      color: Colors.amber,
      home: new MyHomePage(title1: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        "/Container": (a) => new LYContainer(),
        '/Padding': (_) => new LYPadding(),
        '/Center': (_) => new LYCenter(),
        '/Align': (_) => new LYAlign(),
        '/FittedBox': (_) => new LYFittedBox(),
        '/AspectRatio': (_) => new LYAspectRatio(),
        '/ConstrainedBox': (_) => new LYConstrainedBox(),
        '/Baseline': (_) => new LYBaseline(),
        '/FractionallySizedBox': (_) => new LYFractionallySizedBox(),
        '/IntrinsicHeight': (_) => new LYIntrinsicHeight(),
        '/IntrinsicWidth': (_) => new LYIntrinsicWidth(),
        '/LimitedBox': (_) => new LYLimitedBox(),
        '/Offstage': (_) => new LYOffstage(),
        '/OverflowBox': (_) => new LYOverflowBox(),
        '/SizedBox': (_) => new LYSizedBox(),
        '/SizedOverflowBox': (_) => new LYSizedOverflowBox(),
        '/Transform': (_) => new LYTransform(),
        '/CustomSingleChildLayout': (_) => new LYCustomSingleChildLayout(),
        '/Row': (_) => new LYRow(),
        '/Column': (_) => new LYColumn(),
        '/Stack': (_) => new LYStack(),
        '/IndexedStack': (_) => new LYIndexedStack(),
        '/GridView': (_) => new LYGridView(),
        '/Flow': (_) => new LYFlow(),
        '/Table': (_) => new LYTable(),
        '/Wrap': (_) => new LYWrap(),
        '/ListBody': (_) => new LYListBody(),
        '/ListView': (_) => new LYListView(),
        '/CustomMultiChildLayout': (_) => new LYCustomMultiChildLayout(),
      },
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      showPerformanceOverlay: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      debugShowMaterialGrid: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title1}) : super(key: key);

  final String title1;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

void _navigateToPage(BuildContext context, String page) {
  print("Page:$page");
  Navigator.of(context).pushNamed('/$page');
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> layoutWidgets = [];
    layoutWidgets.add("--Single-child layout widgets--");
    layoutWidgets.addAll(singleLayoutWidgets);
    layoutWidgets.add("--Multi-child layout widgets--");
    layoutWidgets.addAll(multiLayoutWidgets);

    return new Scaffold(
      body: new ListView.builder(
        itemBuilder: (BuildContext buildContext, int index) {
          return new ListTile(
            title: new LayoutListItem(
              index: index,
              title: layoutWidgets[index],
              onPress: () {
                String item = layoutWidgets[index];
                if (item.startsWith("--")) {
                  return;
                }

                _navigateToPage(context, layoutWidgets[index]);
              },
            ),
          );
        },
        itemCount: (singleLayoutWidgets.length + multiLayoutWidgets.length + 2),
      ),
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        title: Text(widget.title1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {},
          ),
          new PopupMenuButton<String>(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                    new PopupMenuItem(child: new Text("我的")),
                    new PopupMenuItem(child: new Text("设置")),
                    new PopupMenuItem(child: new Text("钱包")),
                  ])
        ],
        elevation: 10,
        shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: new BorderSide(
              style: BorderStyle.none,
            )),
        backgroundColor: Colors.green,
        brightness: Brightness.light,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        actionsIconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        textTheme: Theme.of(context).textTheme.apply(fontSizeFactor: 1.2),
        primary: true,
        centerTitle: true,
        titleSpacing: 10,
        toolbarOpacity: 1.0,
        bottomOpacity: 0.5,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Increment',
        foregroundColor: Colors.cyanAccent,
        backgroundColor: Colors.green,
        focusColor: Colors.red,
        hoverColor: Colors.black,
        onPressed: null,
        shape: const CircleBorder(),
        clipBehavior: Clip.none,
        focusNode: null,
        isExtended: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      persistentFooterButtons: <Widget>[Text('取消'), Text('确定')],
      drawer: new Drawer(
        child: new UserAccountsDrawerHeader(
          accountName: new Text(
            "Flutter",
          ),
          accountEmail: new Text(
            "Flutter@gmail.com",
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              '首页',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              '社区',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              '我的',
            ),
          ),
        ],
        currentIndex: 0,
      ),
      bottomSheet: Text('底部弹出框'),
      primary: true,
      drawerDragStartBehavior: DragStartBehavior.down,
      extendBody: true,
      drawerScrimColor: Color.fromARGB(50, 0, 0, 0),
    );
  }
}

class LayoutListItem extends StatelessWidget {
  LayoutListItem({this.index, this.title, this.onPress});

  final int index;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onPress,
      child: new Center(
        child: new Text(
          "$title",
          style: new TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }
}
