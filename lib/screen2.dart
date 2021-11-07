import 'package:flutter/material.dart';
import 'package:lesson_5/dimens.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);
  final listDemo = [
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(child: Container(color: Colors.amberAccent, child:buildWidgetListView())),
            Expanded(child: Container( child:buildWidgetGridView())),
          ],
        ));
  }

  buildWidgetListView() => ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: listDemo.length,
      itemBuilder: (BuildContext context, index) {
        return Text(
          listDemo[index],
          style: TextStyle(fontSize: 30.w),
        );
      });

  buildWidgetGridView() => GridView.builder(
      itemCount: listDemo.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, mainAxisSpacing: 2, crossAxisSpacing: 2, mainAxisExtent: 100),
      itemBuilder: (BuildContext context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.greenAccent
          ),
          child: Column(
            children: [
              Image.asset('assets/images/pepe.png', width: 25.w, height: 25.w,),
              Text(
                listDemo[index],
                style: TextStyle(fontSize: 20.w),
              ),
            ],
          ),
        );
      });
}