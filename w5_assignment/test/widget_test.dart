import 'package:flutter_test/flutter_test.dart';
import 'package:w5_assignment/main.dart';

void main() {
  testWidgets('Exercise 1 renders text smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(exercise1());
    expect(find.text('Hello my name is Ronan !'), findsOneWidget);
  });
}
