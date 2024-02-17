import 'package:flutter/material.dart';
import 'package:sugarsense/info.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String beforeMeal = "";
  String afterMeal = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset("lib/assets/SugarSense.png"),
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
              padding: EdgeInsets.only(top: 60),
              child: TextField(
                onChanged: (value) {
                  // Update the beforeMeal variable when the text field changes
                  setState(() {
                    beforeMeal = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: "Before Meals",
                  // hintText: 'Input',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                // Update the name variable when the text field changes
                setState(() {
                  afterMeal = value;
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const infoPage()),
                  );
                  print((beforeMeal, afterMeal));
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
