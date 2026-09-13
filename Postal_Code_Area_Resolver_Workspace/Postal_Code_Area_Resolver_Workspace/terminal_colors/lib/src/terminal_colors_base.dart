/// Extension on String to provide terminal color styling methods.
extension TerminalColors on String {
  /// Apply header style (bold cyan)
  String get styleHeader => '\x1B[1;36m$this\x1B[0m';

  /// Apply success style (bold green)
  String get styleSuccess => '\x1B[1;32m$this\x1B[0m';

  /// Apply warning style (bold yellow)
  String get styleWarning => '\x1B[1;33m$this\x1B[0m';

  /// Apply error style (bold red)
  String get styleError => '\x1B[1;31m$this\x1B[0m';

  /// Reset all styles
  String get styleReset => '\x1B[0m$this';
}
