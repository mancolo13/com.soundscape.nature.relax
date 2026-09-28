import 'package:flutter_test/flutter_test.dart';
import 'package:app10/main.dart';

void main() {
  testWidgets('SoundScape renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const SoundScapeApp());
    expect(find.byType(SoundScapeApp), findsOneWidget);
  });
}
