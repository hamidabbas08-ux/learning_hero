import 'package:flutter_test/flutter_test.dart';
import 'package:learning_hero/app/app.dart';

void main() {
  testWidgets('Learning Hero starts', (WidgetTester tester) async {
    await tester.pumpWidget(const LearningHeroApp());

    expect(find.text('Learning Hero'), findsOneWidget);
  });
}
