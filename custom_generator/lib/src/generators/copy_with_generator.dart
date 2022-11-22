import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:custom_generator/src/utils/class_visitor.dart';
import 'package:custom_generator_annotations/elements-generators-annotations.dart';
import 'package:source_gen/source_gen.dart';

class CopyWithGenerator extends GeneratorForAnnotation<GenerateCopyWith> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final visitor = ClassVisitor();
    element.visitChildren(visitor);

    final className = visitor.className;
    final extensionName = '${visitor.className}CopyWithExtension';
    final buffer = StringBuffer();

    buffer.writeln('extension $extensionName on ${visitor.className} {');
    buffer.writeln('$className copyWith({');

    for (final field in visitor.fields) {
      buffer.writeln('${field.type} Function(${field.type})? '
          '${field.name}, ');
    }

    buffer.writeln('}) => $className(');

    for (final field in visitor.fields) {
      buffer.writeln(
          '${field.name}: ${field.name} != null ? ${field.name}.call(this.${field.name}) : '
          'this.${field.name}, ');
    }

    buffer.writeln(');}');

    return buffer.toString();
  }
}
