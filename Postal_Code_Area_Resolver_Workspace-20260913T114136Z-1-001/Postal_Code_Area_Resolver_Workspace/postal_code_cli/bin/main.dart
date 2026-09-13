import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:terminal_colors/terminal_colors.dart';
import 'package:postal_code_api/postal_code_api.dart';

void main() async {
  final httpClient = http.Client();
  final apiClient = PostalCodeApiClient(httpClient);

  print('====================================='.styleHeader);
  print('    PHILIPPINES POSTAL RESOLVER CLI  '.styleHeader);
  print('====================================='.styleHeader);
  print('Commands:');
  print('  lookup <ZIP> [COUNTRY]  - Lookup area info (e.g., lookup 5000 or lookup 1000)');
  print('  exit                    - Quit application\n');

  try {
    while (true) {
      stdout.write('[postal-resolver-ph] > ');
      final input = stdin.readLineSync();

      if (input == null || input.trim().toLowerCase() == 'exit') {
        print('Exiting Postal Code Resolver...'.styleWarning);
        break;
      }

      final trimmed = input.trim();
      if (trimmed.isEmpty) continue;

      final parts = trimmed.split(RegExp(r'\s+'));
      final command = parts.first.toLowerCase();

      if (command == 'lookup' && parts.length > 1) {
        final zip = parts[1];
        // Default to 'ph' if no country code is specified
        final country = parts.length > 2 ? parts[2] : 'ph';

        print('\nResolving $zip (${country.toUpperCase()})...\n');

        try {
          final result = await apiClient.resolvePostalCode(zip, countryCode: country);

          if (result == null) {
            print('No details found for postal code "$zip" in country "${country.toUpperCase()}".'.styleWarning);
            continue;
          }

          print('--------------------------------------------------'.styleHeader);
          print('Postal Code: ${result.postCode} | Country: ${result.country} (${result.countryAbbreviation})'.styleSuccess);
          print('--------------------------------------------------');

          for (var p in result.places) {
            print('  • City/Place: ${p.placeName}'.styleSuccess);
            print('    State/Region: ${p.state} (${p.stateAbbreviation})');
            print('    Coordinates: Lat ${p.latitude}, Long ${p.longitude}\n');
          }
          print('--------------------------------------------------\n'.styleHeader);
        } catch (e) {
          print('Error resolving postal code: $e'.styleError);
        }
      } else {
        print('Invalid command. Usage: "lookup <ZIP> [COUNTRY]" or "exit"'.styleError);
      }
    }
  } finally {
    httpClient.close();
  }
}