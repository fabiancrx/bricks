# {{package_name.titleCase()}} UI package

{{package_name.titleCase()}} UI package containing a general design system.

This package is intended to house UI constant and utilities (created by this brick),
and your custom widgets created by you so there is a clean separation of the presentation layer
from the rest of the application.

## File Structure 

```
└── {{package_name.snakeCase()}}_theme
    ├── analysis_options.yaml
    ├── assets
    ├── lib
    │   ├── {{short_name.snakeCase()}}_theme.dart
    │   ├── ui
    │   │   ├── assets.dart
    │   │   ├── color.dart
    │   │   ├── device.dart
    │   │   ├── theme.dart
    │   │   └── typography.dart
    │   └──widgets
    ├── pubspec.yaml
    └── README.md
```

## Colors

Here we store the single source of truth of {{package_name.titleCase()}} color palette.
The app theme should be created from these colors.

> Initial values should be modified to meet the project colors requirements.

## Theme

Use {{short_name.pascalCase()}}Theme to share colors and font styles to all widgets in the app by providing a ThemeData
to the App constructor.
We use the colors from `{{short_name.pascalCase()}}Color` and the [FlexColorScheme][flex_color_scheme] package
to make a beautiful material design based color scheme with sane defaults.
We can further customize the generated {{short_name.pascalCase()}}Theme.

> See https://docs.flexcolorscheme.com/ for an in depth documentation of FlexColorScheme.

```dart

const theme = {{short_name.pascalCase()}}Theme();
return MaterialApp(
theme: theme.light,
darkTheme: theme.dark,
...
```

## Device

This is one of the most useful parts of the package, here we have some utilities like:

### Sizes

Here we have constants for consistent spacing and padding. Eg:
`Padding(padding: EdgeInsets.all(Sizes.sm));`

### Device Platform

We can securely(as it won't [crash on web][platform_crash_on_web] ) identify which platform the app is running by
querying the class.
Eg:

```dart
Devce.isAndroid // True if the device is android
Devce.isDesktopDevice // True if the device is linux, macos or windows
```

### Breakpoint

By setting custom Breakpoints we can tweak our UI's based on the device screen size. Do not confuse with the [Device]
utility above which gives us information on the device OS, independently of screen size.
By knowing the device screen sizes we can make widgets adaptive or responsive with a few convenient methods like:

```dart
// A grid can be made responsive by changing the number of items depending on the screen size
fnial gridSize = context.screenSize().map(mobile: 4, desktop: 6, tablet: 8);

// You can change the UI based on the screen size too
return ScreenBuilder(
mobile: (context)=>ProductsListView(),
tablet: (context)=>ProductsGridView(),
);
```

Or create a custom breakpoint :

```dart
  // Screens sizes smaller than tablet are considered mobile
const custom = BreakPoint(tablet: 600, desktop: 950);
// Default breakpoints of each platform
const material = BreakPoint.material();
const windows = BreakPoint.windows();
const cupertino = BreakPoint.cupertino();
// Set custom breakpoint as global 
// This changes the default breakpoint used by `ScreenBuilder` and `context.screenSize`
BreakPoint.setDefaultBreakPoint(custom);
```

## Typography

Default text styles and font family.

## Widgets

Inside this folder you should organize the app's custom widgets.

## Assets usage Example

You can add assets inside {{short_name.pascalCase()}}Assets class and use them throughout your project.

```dart
AppBar(leading: const {{short_name.pascalCase()}}Assets.logo);
```

[flex_color_scheme]: https://pub.dev/packages/flex_color_scheme

[platform_crash_on_web]: https://github.com/flutter/flutter/issues/50845