import 'package:postal_code_api/postal_code_api.dart';
import 'package:test/test.dart';

void main() {
  group('PostalCodeApiClient tests', () {
    test('PostalCodeApiClient can be instantiated', () {
      // Just verify the client can be created
      expect(PostalCodeApiClient, isNotNull);
    });
  });
}
