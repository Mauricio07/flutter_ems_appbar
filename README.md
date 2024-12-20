# ems_appbar

A Flutter package that provides three customizable AppBar styles for your application:

1. **Rounded AppBar**: Features a rounded bottom edge and allows you to insert a widget (e.g., a
   title).
2. **Image and Widget AppBar**: Lets you include both an image and a widget for customization.
3. **Centered Title and Image AppBar**: Displays a centered title and image for a balanced design.

---

## Download and Installation

To install `ems_appbar`, follow these steps:

1. Open your Flutter project and navigate to the `pubspec.yaml` file.
2. Add the following line under `dependencies`:

   ```yaml
   dependencies:
     ems_appbar: 0.0.2
   ```

3. Run the following command to download the package:

   ```bash
   flutter pub get
   ```

---

## Usage

Import the package in your Dart file:

```dart
import 'package:ems_appbar/ems_appbar.dart';
```

### Rounded AppBar

```dart
HeaderApp
(
widgetTitle
:
Text
(
"
Your Custom Widget
"
)
);
```

### Image and Widget AppBar

```dart
HeaderAppImage
(
widgetTitle: Text("Your Custom Widget"), urlPath: '
https://picsum.photos/536/354
'
);
```

### Centered Title and Image AppBar

```dart
Scaffold
(
body: CustomScrollView(
slivers: [
HeaderImage(
urlImage: 'https://picsum.photos/536/354',
title: 'Your Custom text',
),
SliverList(
delegate: SliverChildListDelegate(
[
Text("Your Custom Body Widget")
],
),
)
]
,
)
,
);
```

---

## Contributions

We welcome your contributions! If you want to improve this package, feel free to open an issue or
submit a pull request on [GitHub](https://github.com/Mauricio07/flutter_ems_appbar).

---

## Support the Project

If you like this project, consider buying me a coffee or supporting via PayPal:

[![Buy Me a Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/74spqeant)

[![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/bh5dkn3miqftnivj6htg.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=H3BEAVMT4SL9Y)

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
