import 'package:build/build.dart';
import 'package:custom_generator/src/generators/copy_with_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder copyWith(BuilderOptions options) => SharedPartBuilder(
      [CopyWithGenerator()],
      'copy_with',
    );
