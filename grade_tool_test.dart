import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  group('GradeConverter', () {
    test('returns A for grades 90 and above', () {
      expect(GradeTool.toLetter(90), 'A');
      expect(GradeTool.toLetter(100), 'A');
    });

    test('returns B for grades between 80 and 89', () {
      expect(GradeTool.toLetter(80), 'B');
      expect(GradeTool.toLetter(89), 'B');
    });

    test('returns C for grades between 70 and 79', () {
      expect(GradeTool.toLetter(70), 'C');
      expect(GradeTool.toLetter(79), 'C');
    });

    test('returns D for grades between 60 and 69', () {
      expect(GradeTool.toLetter(60), 'D');
      expect(GradeTool.toLetter(69), 'D');
    });

    test('returns F for grades below 60', () {
      expect(GradeTool.toLetter(59), 'F');
      expect(GradeTool.toLetter(0), 'F');
    });

    test('throws an error for invalid grades', () {
      expect(() => GradeTool.toLetter(-1), throwsArgumentError);
      expect(() => GradeTool.toLetter(101), throwsArgumentError);
    });
  });
}
