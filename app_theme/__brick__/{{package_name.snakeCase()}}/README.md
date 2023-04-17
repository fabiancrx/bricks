# {{package_name.titleCase()}} UI package

{{package_name.titleCase()}} UI package containing a bare-bones design system.

This package is intended to house UI constant and utilities (created by this brick),
and your custom widgets created by you so there is a clean separation of the presentation layer
from the rest of the application.

## File Structure

```
{{#createPlayground}}
├── {{package_name.snakeCase()}}_playground
│   ├── lib
│   │   └── main.dart
│   ├── linux
│   ├── macos
│   ├── pubspec.lock
│   ├── pubspec.yaml
│   ├── README.md
│   └── windows
{{\createPlayground}}
└── {{package_name.snakeCase()}}
    ├── analysis_options.yaml
    ├── assets
    ├── lib
    │   ├── {{short_name.snakeCase()}}.dart
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

## TLDR

### {{package_name.snakeCase()}}

`{{package_name.snakeCase()}}`  is generated with sane defaults as a starting point as the package
that should contain all your presentation logic. Your app should import it in its `pubspec.yaml`:

```yaml
  {{package_name.snakeCase()}}:
    path: packages/{{package_name.snakeCase()}}
```

By doing so you have a default theme, colors, sizing, widgets etc. to kickstart your app.
One of the main benefits is increased speed.
But also modularization due to packaging all the presentation code inside `{{package_name.snakeCase()}}`. 

{{#createPlayground}}

### Playground

This is place to see how the tweaks to your theme affect other material widgets.
Here you can quickly see the changes in colors, buttons, borders, shapes etc. that some properties of the theme
have on the material widgets.

[Material Playground demo](https://user-images.githubusercontent.com/37002358/231079783-c79d81b0-7349-4043-8b8b-3b61c5ba83ec.webm)

#### How to use it

Just open the folder that contains the playground and launch it

```sh
cd {{package_name.snakeCase()}}_playground
flutter run 
```

By default, it loads the `{{short_name.pascalCase()}}Theme` theme created at `{{package_name.snakeCase()}}` so you can
rapidly see how your theme changes affect the material widgets.

{{\createPlayground}}

## Theme

Use {{short_name.pascalCase()}}Theme to share colors and font styles to all widgets in the app by providing a ThemeData
to the App constructor.
We use the colors from `{{short_name.pascalCase()}}Color` and the [FlexColorScheme][flex_color_scheme] package
to make a beautiful material design based apps with sane defaults.

> See https://docs.flexcolorscheme.com/ for an in depth documentation of FlexColorScheme.

```dart

const theme = {{short_name.pascalCase()}}Theme();
return MaterialApp(
theme: theme.light,
darkTheme: theme.dark,
...
```

## Colors

Here we store the single source of truth of {{package_name.titleCase()}} color palette.
The app theme should be created from these colors and maintain the same naming convention  as the design spec.

> Initial values should be modified to meet the project colors requirements.

## Device

This is one of the most useful parts of the package, here we have some utilities like:

### Sizes

Here we have constants for consistent spacing and padding. Eg:
`Padding(padding: EdgeInsets.all(Sizes.sm));`
or even better use the `responsiveInsets` method that scales the padding with the screen size.
`Padding(padding: EdgeInsets.all(Sizes.responsiveInsets(context)));`

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


## Additional information

This package is supposed to give you a starting point, but no two design systems are the same and as such, you're
encouraged to tweak {{package_name.snakeCase()}} to your liking, by adding or removing attributes and files as 
you deem fit.

{{#createPlayground}}
The `{{package_name.snakeCase()}}_playground` is a place to test your theme with the material widgets shipped with flutter, 
but it's not meant to be customized. If you also want to check how theme changes affect your custom widgets 
give [widgetbook](https://www.widgetbook.io/) a try, its open source and specifically tailored to that use case.
It also has a [brick](https://brickhub.dev/bricks/widgetbook_starter) available.
{{/createPlayground}}