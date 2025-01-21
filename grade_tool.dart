class GradeTool {
  static String toLetter(int grade) {
    if (grade < 0 || grade > 100) {
      throw ArgumentError('Grade must be between 0 and 100');
    }

    if (grade >= 90) return 'A';
    if (grade >= 80) return 'B';
    if (grade >= 70) return 'C';
    if (grade >= 60) return 'D';
    return 'F';
  }
}
