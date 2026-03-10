# flutter_gn_bottom_nav_bar

A customizable and animated bottom navigation bar for Flutter. It supports two distinct styles: a modern "Google" style with expanding tabs and a classic "Old School" style with icons and text.

[![GitHub license](https://img.shields.io/github/license/GeorgeNady/flutter_gn_bottom_nav_bar)](https://github.com/GeorgeNady/flutter_gn_bottom_nav_bar/blob/main/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/GeorgeNady/flutter_gn_bottom_nav_bar)](https://github.com/GeorgeNady/flutter_gn_bottom_nav_bar/stargazers)

## Features

- **GnNavStyle.google**: Expanding tabs with smooth transitions (similar to GNav).
- **GnNavStyle.oldSchool**: Classic bottom navigation with icons and labels below.
- **High Customization**: Tweak colors, padding, margins, borders, shadows, and animation curves.
- **Gradients**: Support for gradient backgrounds on individual tabs or the entire bar.
- **Haptic Feedback**: Built-in support for selection haptics.
- **Asset Icons**: Uses `Image.asset` for icons, allowing for custom themed images.

## Getting started

Since this package is not published on pub.dev, you can add it to your `pubspec.yaml` using the GitHub repository:

```yaml
dependencies:
  flutter_gn_bottom_nav_bar:
    git:
      url: https://github.com/GeorgeNady/flutter_gn_bottom_nav_bar.git
      ref: main
```

## Usage

### Simple Google Style

```dart
GnBottomNavBar(
  onTabChange: (index) {
    print(index);
  },
  tabs: [
    GnButton(
      iconAsset: 'assets/home.png',
      text: 'Home',
    ),
    GnButton(
      iconAsset: 'assets/search.png',
      text: 'Search',
    ),
    GnButton(
      iconAsset: 'assets/profile.png',
      text: 'Profile',
    ),
  ],
)
```

### Advanced Customization

```dart
GnBottomNavBar(
  gap: 8,
  activeColor: Colors.white,
  color: Colors.grey,
  iconSize: 24,
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  duration: Duration(milliseconds: 800),
  tabBackgroundColor: Colors.blue.withOpacity(0.1),
  style: GnNavStyle.google, // or GnNavStyle.oldSchool
  tabs: [
    GnButton(
      iconAsset: 'assets/home.png',
      text: 'Home',
      backgroundColor: Colors.red.withOpacity(0.2),
      iconActiveColor: Colors.red,
    ),
    GnButton(
      iconAsset: 'assets/search.png',
      text: 'Search',
      backgroundColor: Colors.orange.withOpacity(0.2),
      iconActiveColor: Colors.orange,
    ),
    GnButton(
      iconAsset: 'assets/user.png',
      text: 'Profile',
      backgroundColor: Colors.purple.withOpacity(0.2),
      iconActiveColor: Colors.purple,
    ),
  ],
  selectedIndex: _selectedIndex,
  onTabChange: (index) {
    setState(() {
      _selectedIndex = index;
    });
  },
)
```

## Parameters

### GnBottomNavBar

| Parameter | Type | Default | Description |
|---|---|---|---|
| `tabs` | `List<GnButton>` | **Required** | List of navigation buttons. |
| `selectedIndex` | `int` | `0` | The initially selected tab index. |
| `onTabChange` | `ValueChanged<int>?` | `null` | Callback triggered on tab selection. |
| `style` | `GnNavStyle` | `GnNavStyle.google` | Navigation bar style (`google` or `oldSchool`). |
| `gap` | `double` | `0` | Spacing between icon and text. |
| `padding` | `EdgeInsetsGeometry` | `EdgeInsets.all(25)` | Padding inside the bar. |
| `backgroundColor` | `Color` | `Colors.transparent` | Background color of the bar. |
| `tabBackgroundColor` | `Color` | `Colors.transparent` | Background color of the active tab. |
| `activeColor` | `Color?` | `null` | Color of icon and text when active. |
| `color` | `Color?` | `null` | Color of icon and text when inactive. |
| `duration` | `Duration` | `500ms` | Animation duration. |
| `curve` | `Curve` | `Curves.easeInCubic` | Animation curve. |
| `haptic` | `bool` | `true` | Enable/disable haptic feedback. |

### GnButton

| Parameter | Type | Description |
|---|---|---|
| `iconAsset` | `String` | **Required** Asset path for the icon image. |
| `text` | `String` | Label text for the tab. |
| `iconSize` | `double?` | Custom icon size for this tab. |
| `leading` | `Widget?` | Custom widget to use instead of the asset icon. |
| `backgroundGradient` | `Gradient?` | Custom gradient background for this tab. |
| `onPressed` | `Function?` | Custom callback when this specific tab is pressed. |

## License

MIT
