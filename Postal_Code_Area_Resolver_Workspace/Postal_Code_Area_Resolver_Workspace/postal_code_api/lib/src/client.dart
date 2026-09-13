import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'models.dart';

class PostalCodeApiClient {
  final http.Client _client;
  final Logger _logger = Logger('PostalCodeApiClient');

  static const String _authority = 'api.zippopotam.us';

  PostalCodeApiClient(this._client);

  /// Resolves a ZIP/postal code for a given country code (defaults to 'ph')
  Future<PostalLocation?> resolvePostalCode(String zipCode,
      {String countryCode = 'ph'}) async {
    _logger.info('Resolving postal code $zipCode for country $countryCode...');

    final cleanZip = zipCode.trim();
    final cleanCountry = countryCode.trim().toLowerCase();

    final uri = Uri.http(_authority, '/$cleanCountry/$cleanZip');

    try {
      final response =
          await _client.get(uri).timeout(const Duration(seconds: 10));

      if (response.statusCode == 404) {
        return null; // Postal code not found
      }

      if (response.statusCode != 200) {
        throw Exception('Server returned HTTP ${response.statusCode}');
      }

      final decoded = json.decode(response.body) as Map<String, dynamic>;
      return PostalLocation.fromJson(decoded);
    } catch (e) {
      _logger.severe('Failed to resolve postal code.', e);
      rethrow;
    }
  }
}
