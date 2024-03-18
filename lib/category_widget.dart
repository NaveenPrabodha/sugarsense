import 'package:flutter/material.dart';

/// A widget representing a category item.
class CategoryWidget extends StatelessWidget {
  final String categoryType;
  final String categoryInstruction;
  final Color categoryColor;

  /// Constructor for [CategoryWidget].
  const CategoryWidget({
    Key? key,
    required this.categoryType,
    required this.categoryInstruction,
    required this.categoryColor,
  }) : super(key: key);

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
          // Display category type
          Text(categoryType,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          // Display category instruction
          Text(categoryInstruction,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
