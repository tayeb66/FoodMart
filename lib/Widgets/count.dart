import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {

  var counter = 1;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: isTrue == true? Row(
        children: [
          Expanded(
              child: InkWell(
                onTap: () {
                 if(counter == 1){
                   setState(() {
                     isTrue = false;
                   });
                 }

                 setState(() {
                   counter--;
                 });
                },
                child: Icon(
                  Icons.remove,
                  size: 20,
                  color: Colors.green,
                ),
              )),
          Expanded(
              child: Text(
                counter.toString(),
                style: TextStyle(
                  color: Colors.green,
                ),
              )),
          Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.green,
                ),
              )),
        ],
      ): Center(
        child: InkWell(
          onTap: (){
            setState(() {
              isTrue = true;
            });
          },
          child: Text('Add'),

        ),
      ),
    );
  }
}
