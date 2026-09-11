# Flutter Custom Toast & SnackBar

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#flutter-custom-toast--snackbar)

A reusable Flutter package that provides **custom Toast messages and SnackBars** with support for icons, text, background colors, shapes, sizes, padding, margins, and display duration.

It helps developers create consistent notification messages without repeatedly building custom Toast and SnackBar components in every Flutter application.

## Preview

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#preview)

<p align="center">
  <img src="example/assets/demo.gif" alt="Flutter Custom Toast & SnackBar Demo" width="250">
</p>

## Features

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#features)

* Custom Toast messages
* Custom SnackBars
* Icon support
* Custom icon color
* Custom text color
* Custom background color
* Custom font size
* Custom icon size
* Rounded shape
* Pill shape
* Square shape
* Custom border radius
* Custom Toast duration
* Custom SnackBar duration
* Custom Toast padding
* Custom SnackBar padding
* Custom SnackBar margin
* Easy to integrate
* Lightweight implementation

## Why This Package?

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#why-this-package)

Developers frequently need notification messages for:

* Successful operations
* Error messages
* Information messages
* Warnings
* Profile updates
* Form submissions
* API responses
* Application events

Instead of creating the same Toast and SnackBar UI repeatedly, this package provides reusable components with customizable appearance and behavior.

### Without the package

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#without-the-package)

```dart
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text('Profile updated successfully!'),
  ),
);
```

**svg**

### With this package

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#with-this-package)

```dart
CustomSnackBar.show(
  context,
  message: 'Profile updated successfully!',
  icon: Icons.check_circle,
  backgroundColor: Colors.green,
);
```

**svg**

The package provides a reusable and customizable SnackBar without manually configuring the complete UI each time.

## Installation

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#installation)

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_custom_toast_snackbar:
    path: ../
```

**svg**

For a published package, use the package version instead:

```yaml
dependencies:
  flutter_custom_toast_snackbar: ^1.0.0
```

**svg**

Then run:

```bash
flutter pub get
```

**svg**

## Import

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#import)

```dart
import 'package:flutter_custom_toast_snackbar/flutter_custom_toast_snackbar.dart';
```

**svg**

## Custom Toast

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#custom-toast)

Display a simple Toast message:

```dart
CustomToast.show(
  context,
  message: 'Saved successfully!',
);
```

**svg**

### Toast with Icon

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#toast-with-icon)

```dart
CustomToast.show(
  context,
  message: 'Saved successfully!',
  icon: Icons.check_circle,
  backgroundColor: Colors.green,
);
```

**svg**

### Toast Shapes

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#toast-shapes)

The package supports three Toast shapes:

```text
ToastShape.rounded
ToastShape.pill
ToastShape.square
```

**svg**

#### Rounded Toast

```dart
CustomToast.show(
  context,
  message: 'Rounded Toast',
  icon: Icons.check,
  backgroundColor: Colors.green,
  shape: ToastShape.rounded,
);
```

**svg**

#### Pill Toast

```dart
CustomToast.show(
  context,
  message: 'Pill Toast',
  icon: Icons.info,
  backgroundColor: Colors.blue,
  shape: ToastShape.pill,
);
```

**svg**

#### Square Toast

```dart
CustomToast.show(
  context,
  message: 'Square Toast',
  icon: Icons.error,
  backgroundColor: Colors.red,
  shape: ToastShape.square,
);
```

**svg**

## Toast Customization

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#toast-customization)

Customize the Toast appearance:

```dart
CustomToast.show(
  context,
  message: 'Profile updated!',
  icon: Icons.person,
  backgroundColor: Colors.deepPurple,
  textColor: Colors.white,
  iconColor: Colors.white,
  shape: ToastShape.rounded,
  borderRadius: 16,
  iconSize: 24,
  fontSize: 16,
  duration: const Duration(seconds: 3),
  padding: const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 14,
  ),
);
```

**svg**

## Custom SnackBar

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#custom-snackbar)

Display a simple SnackBar:

```dart
CustomSnackBar.show(
  context,
  message: 'Changes saved successfully!',
);
```

**svg**

### SnackBar with Icon

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#snackbar-with-icon)

```dart
CustomSnackBar.show(
  context,
  message: 'Profile updated!',
  icon: Icons.person,
  backgroundColor: Colors.blue,
);
```

**svg**

### SnackBar Shapes

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#snackbar-shapes)

The package supports three SnackBar shapes:

```text
SnackBarShape.rounded
SnackBarShape.pill
SnackBarShape.square
```

**svg**

#### Rounded SnackBar

```dart
CustomSnackBar.show(
  context,
  message: 'Rounded SnackBar',
  icon: Icons.check,
  backgroundColor: Colors.green,
  shape: SnackBarShape.rounded,
);
```

**svg**

#### Pill SnackBar

```dart
CustomSnackBar.show(
  context,
  message: 'Pill SnackBar',
  icon: Icons.notifications,
  backgroundColor: Colors.deepPurple,
  shape: SnackBarShape.pill,
);
```

**svg**

#### Square SnackBar

```dart
CustomSnackBar.show(
  context,
  message: 'Square SnackBar',
  icon: Icons.error,
  backgroundColor: Colors.red,
  shape: SnackBarShape.square,
);
```

**svg**

## SnackBar Customization

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#snackbar-customization)

Customize the SnackBar appearance:

```dart
CustomSnackBar.show(
  context,
  message: 'Changes saved successfully!',
  icon: Icons.check_circle,
  backgroundColor: Colors.green,
  textColor: Colors.white,
  iconColor: Colors.white,
  shape: SnackBarShape.rounded,
  borderRadius: 16,
  iconSize: 24,
  fontSize: 16,
  duration: const Duration(seconds: 4),
  padding: const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 14,
  ),
  margin: const EdgeInsets.all(16),
);
```

**svg**

## Toast Parameters

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#toast-parameters)

The `CustomToast.show()` method supports:

```text
message
icon
backgroundColor
textColor
iconColor
shape
borderRadius
iconSize
fontSize
duration
padding
```

**svg**

## SnackBar Parameters

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#snackbar-parameters)

The `CustomSnackBar.show()` method supports:

```text
message
icon
backgroundColor
textColor
iconColor
shape
borderRadius
iconSize
fontSize
duration
padding
margin
```

**svg**

## Complete Example

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#complete-example)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_custom_toast_snackbar/flutter_custom_toast_snackbar.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  void showToast(BuildContext context) {
    CustomToast.show(
      context,
      message: 'Saved successfully!',
      icon: Icons.check_circle,
      backgroundColor: Colors.green,
      shape: ToastShape.rounded,
    );
  }

  void showSnackBar(BuildContext context) {
    CustomSnackBar.show(
      context,
      message: 'Profile updated!',
      icon: Icons.person,
      backgroundColor: Colors.blue,
      shape: SnackBarShape.pill,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showToast(context);
              },
              child: const Text('Show Toast'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showSnackBar(context);
              },
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
```

**svg**

## Architecture

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#architecture)

The package follows a simple structure separating the public package entry point from the Toast and SnackBar implementations.

```text
flutter_custom_toast_snackbar/
│
├── example/
│   ├── assets/
│   │   └── demo.gif
│   │
│   └── lib/
│       └── main.dart
│
├── lib/
│   ├── flutter_custom_toast_snackbar.dart
│   │
│   └── src/
│       ├── custom_toast.dart
│       └── custom_snackbar.dart
│
├── test/
├── CHANGELOG.md
├── LICENSE
├── README.md
└── pubspec.yaml
```

**svg**

### Architecture Flow

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#architecture-flow)

```text
Application
     ↓
Flutter Custom Toast & SnackBar
     ↓
     ├── CustomToast
     │      ↓
     │   ToastShape
     │
     └── CustomSnackBar
            ↓
        SnackBarShape
```

**svg**

## Example

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#example)

The package contains an example application demonstrating:

* Custom Toast
* Custom SnackBar
* Icons
* Custom colors
* Custom text
* Rounded shape
* Pill shape
* Square shape
* Custom sizes
* Custom duration
* Custom padding
* Custom SnackBar margin

Run the example:

```bash
cd example
flutter pub get
flutter run
```

**svg**

## Development

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#development)

Install dependencies:

```bash
flutter pub get
```

**svg**

Run static analysis:

```bash
flutter analyze
```

**svg**

Run tests:

```bash
flutter test
```

**svg**

Run the example application:

```bash
cd example
flutter pub get
flutter run
```

**svg**

## License

[svg](https://github.com/Excelsior-Technologies-Community/flutter_custom_toast_snackbar#license)

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
