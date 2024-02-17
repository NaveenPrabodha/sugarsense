import 'package:flutter/material.dart';
import 'package:sugarsense/input.dart';

class infoPage extends StatelessWidget {
  const infoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75, left: 10),
              child: Text(
                "Your Glucose Type",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 10, right: 10, bottom: 10),
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 113, 238, 117),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 355,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Type 2",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text(
                          "Take action now. Consult a professional for guidance.",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      Text("Before Meal :70-100 mg/dL"),
                      Text(
                        "After Meal :70-100 mg/dL",
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
