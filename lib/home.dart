import 'package:counter/utils/box.dart';
import 'package:counter/utils/color_manager.dart';
import 'package:flutter/material.dart';

class Mycounter extends StatefulWidget {
  const Mycounter({Key? key}) : super(key: key);

  @override
  _MycounterState createState() => _MycounterState();
}

class _MycounterState extends State<Mycounter> {
  int num = 0;
  List<Color> colors = ColorManager.colors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Paradise"),
        backgroundColor: colors[num % colors.length],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "$num",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num++;
                    });
                  },
                  child: Text(
                    "+",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num--;
                    });
                  },
                  child: Text(
                    "-",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < num; i++)
                  Box(
                    text: "$i",
                    color: colors[i % colors.length],
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
