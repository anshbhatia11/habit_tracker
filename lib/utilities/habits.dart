import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

late int progress = 0;
late double percenti = 0.0;

class HabetTile extends StatelessWidget {
  final String habitname;

  const HabetTile({super.key, required this.habitname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //progress circle
                    CircularPercentIndicator(
                      radius: 15,
                      percent: percenti,
                      progressColor: Colors.green,
                    ),

                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          habitname,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(progress.toString() + '/10')
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          progress = progress + 1;
                          percenti = percenti + 0.1;
                        },
                        icon: Icon(Icons.play_arrow)),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                        onPressed: () {
                          progress = 0;
                          percenti = 0.0;
                        },
                        icon: Icon(Icons.restart_alt)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
