import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugarsense/controllers/test_result_controller.dart';
import 'package:sugarsense/info.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int beforeMeal = 0;
  int afterMeal = 0;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TestResultController());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset("assets/SugarSense.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40, top: 50),
              child: Row(
                children: [
                  Text(
                    "Input Blood Glucose Values",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                      "Check blood sugar levels effortlessly. SugarSense predicts diabetes risks based on before and after meal readings, empowering you to stay proactive in managing your health. Get started today for peace of mind"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    beforeMeal = int.tryParse(value) ?? 0;
                  });
                },
                decoration: const InputDecoration(
                  labelText: "Before Meals",
                  // hintText: 'Input'
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                // Update the name variable when the text field changes
                setState(() {
                  afterMeal = int.tryParse(value) ?? 0;
                });
              },
              decoration: const InputDecoration(
                labelText: "After Meals",
                // hintText: 'Input',
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: FilledButton(
                onPressed: () {
                  controller.measureBloodSugarType(beforeMeal, afterMeal);
                  Get.to(() => const InfoPage());
                },
                child: const Text('Click to Measure'),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Container newMethod() => Container();
}
