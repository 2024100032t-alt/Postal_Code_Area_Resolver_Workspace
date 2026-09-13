# Postal Code Area Resolver

A Dart-based command-line application that retrieves and displays postal code and area information through an API.

## Project Description

The **Postal Code Area Resolver** is a command-line application developed using Dart. It is designed to retrieve postal code and area information and present the results through a simple command-line interface.

The project demonstrates API integration, JSON data processing, object-oriented programming, command-line interaction, error handling, terminal styling, automated testing, and the organization of a Dart workspace with multiple packages.

## Objectives

The project aims to:

1. Retrieve postal code and area information through an API.
2. Process and convert JSON responses into Dart objects.
3. Provide a command-line interface for querying postal code information.
4. Display relevant postal code and area details.
5. Implement error handling for API and network-related problems.
6. Use terminal colors to improve the command-line interface.
7. Organize the application using a Dart workspace with multiple packages.
8. Implement automated tests for the project components.
9. Practice Dart programming and API integration.

## Features

- Query postal code information.
- Retrieve area information through an API.
- Display postal codes and corresponding area details.
- Provide command-line interaction.
- Process API JSON responses.
- Convert JSON data into Dart models.
- Handle API and network errors.
- Use terminal colors for improved output.
- Include automated tests.
- Organize the project using a multi-package Dart workspace.

## Technologies Used

- **Dart**
- **HTTP**
- **REST API**
- **JSON**
- **Dart Testing Framework**
- **ANSI Terminal Colors**
- **Git**
- **GitHub**
- **Visual Studio Code**

## Project Structure

```text
Postal_Code_Area_Resolver_Workspace/
│
├── terminal_colors/
│   ├── lib/
│   │   ├── src/
│   │   │   ├── ansi.dart
│   │   │   └── terminal_colors_base.dart
│   │   ├── terminal_colors.dart
│   │   └── ...
│   ├── test/
│   └── pubspec.yaml
│
├── postal_code_api/
│   ├── lib/
│   │   ├── src/
│   │   │   ├── client.dart
│   │   │   ├── exceptions.dart
│   │   │   ├── models.dart
│   │   │   └── ...
│   │   ├── postal_code_api.dart
│   │   └── ...
│   ├── test/
│   ├── example/
│   └── pubspec.yaml
│
├── postal_code_cli/
│   ├── bin/
│   │   └── main.dart
│   ├── lib/
│   │   ├── src/
│   │   │   ├── command_base.dart
│   │   │   ├── help_command.dart
│   │   │   ├── logging_config.dart
│   │   │   └── query_command.dart
│   │   ├── postal_code_cli.dart
│   │   └── ...
│   ├── test/
│   └── pubspec.yaml
│
├── pubspec.yaml
├── pubspec.lock
└── .gitignore
```

## Package Description

### terminal_colors

The `terminal_colors` package provides reusable ANSI terminal color constants and styling utilities used to improve the appearance of the command-line interface.

### postal_code_api

The `postal_code_api` package handles communication with the postal code API. It contains the API client, postal code data models, and exception handling for API-related errors.

### postal_code_cli

The `postal_code_cli` package provides the command-line interface of the application. It handles user commands, postal code queries, help commands, logging, and formatted terminal output.

## Requirements

Before running the project, make sure the following are installed:

- Dart SDK 3.12.2 or later
- Git
- Visual Studio Code or another Dart-compatible IDE
- Internet connection
- Access to the required postal code API

## Installation

Clone the repository:

```bash
git clone https://github.com/2024100103t-stack/Postal_Code_Area_Resolver_Workspace.git
```

Navigate to the project directory:

```bash
cd Postal_Code_Area_Resolver_Workspace
```

Get the project dependencies:

```bash
dart pub get
```

## How to Run

Navigate to the CLI package:

```bash
cd postal_code_cli
```

Run the application:

```bash
dart run
```

The application will start the command-line interface.

Example:

```text
[postal_code] >
```

## Example Usage

The application allows users to query postal code and area information through the command-line interface.

Example command:

```text
[postal_code] > query
```

The user can provide the required postal code or area information according to the application's query format.

Example output:

```text
--- POSTAL CODE AREA REPORT ---

Postal Code: 1234
Area: Sample Area

The postal code and area information was successfully retrieved.
```

The displayed information is retrieved and processed from the API response.

## Available Commands

### Query

Search for postal code and area information.

```text
query
```

### Help

Display the available commands and usage information.

```text
help
```

### Exit

Close the application.

```text
exit
```

## API Integration

The application communicates with an external API to retrieve postal code and area information.

The API response is received in JSON format and processed by the `postal_code_api` package before being displayed by the command-line interface.

The general process is:

```text
User Query
    │
    ▼
Command-Line Interface
    │
    ▼
Query Command
    │
    ▼
Postal Code API Client
    │
    ▼
External Postal Code API
    │
    ▼
JSON Response
    │
    ▼
Dart Data Model
    │
    ▼
Formatted Result
    │
    ▼
Terminal Output
```

## Error Handling

The application implements error handling for possible API and network-related problems.

Examples of errors that may be handled include:

- Network connection errors
- Invalid API responses
- Invalid postal code or area information
- Missing or unexpected data
- API request errors

## Testing

The project includes automated tests for its packages and components.

To analyze the entire workspace:

```bash
dart analyze
```

To run the tests:

```bash
dart test
```

A successful analysis should display:

```text
No issues found!
```

## Dart Workspace

The project is organized as a Dart workspace containing multiple related packages:

```text
terminal_colors
postal_code_api
postal_code_cli
```

This structure separates the responsibilities of the application into reusable and manageable packages.

## Sample Workflow

The general workflow of the application is:

```text
User
  │
  ▼
Postal Code CLI
  │
  ▼
Query Command
  │
  ▼
Postal Code API Client
  │
  ▼
Postal Code API
  │
  ▼
JSON Data
  │
  ▼
Dart Models
  │
  ▼
Formatted Postal Code Report
  │
  ▼
Terminal Output
```

## Conclusion

The **Postal Code Area Resolver** demonstrates how Dart can be used to develop a command-line application that communicates with an external API to retrieve and display postal code and area information.

The project provides practical experience in Dart programming, API integration, JSON processing, object-oriented programming, command-line interaction, error handling, terminal formatting, automated testing, and multi-package Dart workspace organization.

## Author

**Agpalo Sharmaine S.**

## Academic Project

This project was developed as part of an academic Dart programming project.
