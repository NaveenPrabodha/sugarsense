import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
              padding: const EdgeInsets.only(bottom: 40, top: 70),
              child: Row(
                children: [
                  Text(
                    "Input Blood Glucose Values",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                      "Check blood sugar levels effortlessly. SugarSense predicts diabetes risks based on before and after meal readings, empowering you to stay proactive in managing your health. Get started today for peace of mind"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Before Meals",
                  // hintText: 'Input',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "After Meals",
                // hintText: 'Input',
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: FilledButton(
                onPressed: () {},
                child: Text('Click to Measure'),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Container newMethod() => Container();
}
