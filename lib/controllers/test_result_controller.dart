import 'package:get/get.dart'; // For GetX state management
import 'package:sugarsense/models/test_result.dart';

// Define a GetX controller class for managing test results
class TestResultController extends GetxController {
  var testResult =
      TestResult(result: "Unknown", beforeMeal: 0, afterMeal: 0).obs;

  // Method to measure blood sugar type based on before and after meal values
  void measureBloodSugarType(int beforeMeal, int afterMeal) {
    if (beforeMeal >= 70 && beforeMeal <= 100 && afterMeal < 140) {
      testResult.value = TestResult(
          result: "Normal", beforeMeal: beforeMeal, afterMeal: afterMeal);
    } else if (beforeMeal >= 100 &&
        beforeMeal <= 125 &&
        afterMeal >= 140 &&
        afterMeal <= 199) {
      testResult.value = TestResult(
          result: "Type 1", beforeMeal: beforeMeal, afterMeal: afterMeal);
    } else if (beforeMeal > 126 && afterMeal > 200) {
      testResult.value = TestResult(
          result: "Type 2", beforeMeal: beforeMeal, afterMeal: afterMeal);
    } else {
      testResult.value = TestResult(
          result: "Unknown", beforeMeal: beforeMeal, afterMeal: afterMeal);
    }
  }
}
