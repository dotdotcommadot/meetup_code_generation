import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class ClassVisitor extends SimpleElementVisitor<void> {
  late String className;
  final List<FieldElement> fields = <FieldElement>[];

  final List<String> _blackListedProperties = <String>['hashCode'];

  @override
  void visitConstructorElement(ConstructorElement element) {
    final elementReturnType = element.type.returnType.toString();
    className = elementReturnType.replaceFirst('*', '');
  }

  @override
  void visitFieldElement(FieldElement element) {
    if (!_blackListedProperties.contains(element.name)) {
      fields.add(element);
    }
  }
}
