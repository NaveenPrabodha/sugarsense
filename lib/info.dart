import 'package:flutter/material.dart';
import 'package:sugarsense/input.dart';
import 'package:sugarsense/categoryWidget.dart';

class infoPage extends StatelessWidget {
  final String result;
  final int beforeMeal;
  final int afterMeal;

  const infoPage(
      {super.key,
      required this.result,
      required this.beforeMeal,
      required this.afterMeal});

  @override
  Widget build(BuildContext context) {
    Widget widgetToShow;

    switch (result) {
      case "Normal":
        widgetToShow = Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: CategoryWidget(
            categoryType: 'Normal',
            categoryInstruction:
                "You're in the clear. Keep up the healthy habits!.",
            categoryColor: const Color.fromARGB(255, 113, 238, 117),
          ),
        );

        break;
      case "Type 1":
        widgetToShow = Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: CategoryWidget(
            categoryType: 'Type 1',
            categoryInstruction:
                "Stay vigilant with management. Keep an eye on your levels.",
            categoryColor: const Color(0xFFFDFFB3),
          ),
        );
        break;

      case "Type 2":
        widgetToShow = Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: CategoryWidget(
            categoryType: 'Type 2',
            categoryInstruction:
                "Take action now. Consult a professional for guidance.",
            categoryColor: const Color(0xFFFF9E9E),
          ),
        );
        break;
      case "Unknown":
        widgetToShow = Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: CategoryWidget(
            categoryType: '⚠',
            categoryInstruction:
                "Your glucose status is currently unavailable. Please input valid data.",
            categoryColor: Color.fromARGB(255, 199, 199, 199),
          ),
        );
      default:
        widgetToShow = Text('No widget available');
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 55,
                bottom: 10,
                left: 10,
              ),
              child: Text("Your Glucose Type",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ),
            widgetToShow,
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0),
                  Text(
                    "Your Data",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Before Meal : " + beforeMeal.toString() + " mg/dL"),
                      Text(
                        "After Meal : " + afterMeal.toString() + " mg/dL",
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 15),
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: const Text('Measure another'),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset("lib/assets/icon1.png"),
                  const SizedBox(height: 10),
                  const Text(
                      "Maintaining a healthy glucose level is key to overall wellness. With mindful eating, regular exercise, and consistent monitoring using tools like SugarSense, you can effectively manage your blood sugar. Consult with healthcare professionals for personalized guidance."),
                  const SizedBox(height: 30),
                  const Text(
                    "Here are the  blood sugar level chart",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Table(
              border: TableBorder.all(),
              children: const [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('Normal'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('Type 1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('Type 2'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('Before Meal'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('70-100mg/dL'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('100-125 mg/dL'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('126< mg/dl '),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('After Meal'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('<140 mg/dL'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('140-199 mg/dL'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('>200 mg/dL'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
