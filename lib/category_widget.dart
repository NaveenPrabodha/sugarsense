import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryType;
  final String categoryInstruction;
  final Color categoryColor;

  const CategoryWidget({
    super.key,
    required this.categoryType,
    required this.categoryInstruction,
    required this.categoryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: categoryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 355,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(categoryType,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(categoryInstruction,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
