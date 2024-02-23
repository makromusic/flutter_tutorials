import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:makromusic_button/src/makromusic_button.dart';

void main() {
  testWidgets('MakromusicButton onTap callback', (WidgetTester tester) async {
    // Variable to track if onTap is called
    bool tapped = false;

    // Build our app and trigger a frame
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MakromusicButton(
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ),
    );

    // Verify that our button is rendered
    expect(find.byType(MakromusicButton), findsOneWidget);

    // Tap on the button
    await tester.tap(find.byType(MakromusicButton));

    // Wait for the animation to complete
    await tester.pump();

    // Verify that onTap callback is called
    expect(tapped, true);
  });

  testWidgets('MakromusicButton UI components', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MakromusicButton(
            onTap: () {},
          ),
        ),
      ),
    );

    // Verify that the button contains the expected UI components
    expect(find.byType(GestureDetector), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);
    expect(find.byType(MakromusicLogo), findsOneWidget);
  });
}
