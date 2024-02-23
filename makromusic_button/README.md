A simple Flutter button widget with a makromusic logo!

This package is intended solely for educational purposes and should not be used in production environments. 
Use in production settings is strongly discouraged and may result in unintended consequences.

## Features

![makromusic_button_screenshot](https://github.com/makromusic/flutter_tutorials/assets/47090675/0e6aff16-3b4b-4222-94e3-cc31f6652754)

## Getting started

Add this line to import the package.

```dart
import 'package:makromusic_button/makromusic_button.dart';
```

## Usage

```dart
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
          width: 300,
          child: MakromusicButton(
            onTap: () {
              debugPrint('Hello World');
            },
          ),
        ),
      );
  }
```
