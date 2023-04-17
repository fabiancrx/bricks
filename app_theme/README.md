# app_theme

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to bootstrap your apps UI by packaging colors, typography, breakpoints, theme, icons and useful extensions.

## Features

Default theme, colors, sizing, widgets etc. to kickstart your app.
One of the main benefits is increased speed.
But also modularization due to packaging all the presentation code.

## Getting Started 🚀

0. Install mason `dart pub global activate mason_cli`
1. Initialize mason in target folder `mason init`
2. Add package `mason add app_theme` to mason
3. Generate the package `mason make app_theme`


### Variables 

| variable               | description                                                                 | default   | type      |
|------------------------|-----------------------------------------------------------------------------|-----------|-----------|
| `package_name`         | name of the package                                                         | app_theme | `string`  |
| `short_name`           | short name of the package                                                   | app       | `string`  |
| `createPlayground`     | A place to tweak your theme and see how it affects other material widgets.  | false     | `boolean` |

### File Structure

```
 └── app_theme
     ├── analysis_options.yaml
     ├── assets
     ├── lib
     │   ├── app_theme.dart
     │   └── ui
     │       ├── assets.dart
     │       ├── colors.dart
     │       ├── device.dart
     │       ├── theme.dart
     │       ├── typography.dart
     │       └── widgets
     │           ├── screen_builder.dart
     │           └── widgets.dart
     ├── pubspec.yaml
     └── README.md
```

### Optional playground

Here you can quickly see the changes in colors, buttons, borders, shapes etc. that some properties of the theme
have on the material widgets.

[Material Playground demo](https://user-images.githubusercontent.com/37002358/231079783-c79d81b0-7349-4043-8b8b-3b61c5ba83ec.webm)

> Special thanks to [rydmike](https://github.com/rydmike) for the playground code

### Playground Structure

```
├── app_playground
│   ├── lib
│   │   └── main.dart
│   ├── linux
│   ├── macos
│   ├── pubspec.lock
│   ├── pubspec.yaml
│   ├── README.md
│   └── windows
```