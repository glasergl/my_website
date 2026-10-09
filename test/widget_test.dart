import 'package:flutter_test/flutter_test.dart';
import 'package:my_website/my_website_app.dart';

void main() {
  testWidgets('Find home page and name', (WidgetTester tester) async {
    await tester.pumpWidget(MyWebsiteApp());

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Gabriel Glaser'), findsAtLeast(1));
  });
}
