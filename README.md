# Bricks 🧱

[Mason][mason_link] reusable bricks to bootstrap and speed up app development process


- [app_theme][app_theme] : A brick to bootstrap your apps UI by packaging colors, typography, breakpoints, theme, assets, extensions and widgets.

**Using the brick while in BETA**
1. Install mason_cli
```sh
dart pub global activate mason_cli
```
2. Inside the folder in which you want the code generated
```sh
mason init 
mason add app_theme --git-url https://github.com/fabiancrx/bricks --git-path app_theme
mason make app_theme
```
[mason_link]: https://pub.dev/packages/mason

[app_theme]: https://brickhub.dev/bricks/app_theme
