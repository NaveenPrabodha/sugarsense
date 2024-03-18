import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugarsense/category_widget.dart';
import 'package:sugarsense/controllers/test_result_controller.dart';
import 'package:sugarsense/input.dart';

/// InfoPage is a StatelessWidget that displays information related to glucose type and user data.
class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}); // Constructor for InfoPage

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<
        TestResultController>(); // Get the TestResultController instance

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            // Display "Your Glucose Type" section
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
            // Observe the test result and display category widget based on the result
            Obx(() {
              switch (controller.testResult.value.result) {
                case "Normal":
                  return const Padding(
                    padding: EdgeInsets.only(
                        top: 30, left: 10, right: 10, bottom: 10),
                    child: CategoryWidget(
                      categoryType: 'Normal',
                      categoryInstruction:
                          "You're in the clear. Keep up the healthy habits!.",
                      categoryColor: Color.fromARGB(255, 113, 238, 117),
                    ),
                  );

                case "Type 1":
                  return const Padding(
                    padding: EdgeInsets.only(
                        top: 30, left: 10, right: 10, bottom: 10),
                    child: CategoryWidget(
                      categoryType: 'Type 1',
                      categoryInstruction:
                          "Stay vigilant with management. Keep an eye on your levels.",
                      categoryColor: Color(0xFFFDFFB3),
                    ),
                  );

                case "Type 2":
                  return const Padding(
                    padding: EdgeInsets.only(
                        top: 30, left: 10, right: 10, bottom: 10),
                    child: CategoryWidget(
                      categoryType: 'Type 2',
                      categoryInstruction:
                          "Take action now. Consult a professional for guidance.",
                      categoryColor: Color(0xFFFF9E9E),
                    ),
                  );
                case "Unknown":
                  return const Padding(
                    padding: EdgeInsets.only(
                        top: 30, left: 10, right: 10, bottom: 10),
                    child: CategoryWidget(
                      categoryType: '⚠',
                      categoryInstruction:
                          "Your glucose status is currently unavailable. Please input valid data.",
                      categoryColor: Color.fromARGB(255, 199, 199, 199),
                    ),
                  );
                default:
                  return const Text('No widget available');
              }
            }),
            // Display user data section
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 0),
                  const Text(
                    "Your Data",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(() => Text(
                          "Before Meal : ${controller.testResult.value.beforeMeal} mg/dL")),
                      Text(
                        "After Meal : ${controller.testResult.value.afterMeal} mg/dL",
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Display "Measure Another" button
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 15),
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const Homepage()),
                  );
                },
                child: const Text('Measure another'),
              ),
            ),
            const SizedBox(height: 20),
            // Display additional information and image
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset("assets/icon1.png"),
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
            // Display blood sugar level chart in a table
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
