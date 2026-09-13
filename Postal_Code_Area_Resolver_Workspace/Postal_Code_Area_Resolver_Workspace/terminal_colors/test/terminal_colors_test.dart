import 'package:terminal_colors/terminal_colors.dart';
import 'package:test/test.dart';

void main() {
  group('TerminalColors extension tests', () {
    test('styleHeader should apply ANSI color codes', () {
      final styled = 'test'.styleHeader;
      expect(styled, contains('\x1B'));
      expect(styled, contains('test'));
    });

    test('styleSuccess should apply ANSI color codes', () {
      final styled = 'test'.styleSuccess;
      expect(styled, contains('\x1B'));
      expect(styled, contains('test'));
    });

    test('styleError should apply ANSI color codes', () {
      final styled = 'test'.styleError;
      expect(styled, contains('\x1B'));
      expect(styled, contains('test'));
    });
  });
}
