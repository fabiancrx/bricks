import 'package:flutter_svg/flutter_svg.dart';

class {{short_name.pascalCase()}}Assets {
  static const _package = "{{short_name.snake_case()}}";

  const {{short_name.pascalCase()}}Assets();

  static SvgPicture get logo => SvgPicture.asset('assets/dash.svg', package: _package,);
}
