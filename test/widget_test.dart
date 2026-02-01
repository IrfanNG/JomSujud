import 'package:flutter_test/flutter_test.dart';
import 'package:jom_sujud/main.dart';

void main() {
  testWidgets('App loads smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const JomSujudApp());

    // Verify that the app title is displayed.
    expect(find.text('JomSujud'), findsOneWidget);
  });
}
