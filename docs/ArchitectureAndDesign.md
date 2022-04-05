## Architecture and Design

The purpose of this section is to describe our application’s architecture. To keep our feature simple and manageable we plan to implement it using the MVC design pattern by dividing it into the following modules: calendar logic, calendar UI (subdivided into a dashboard UI and a page UI), a module responsible for fetching data from the UP member Moodle’s page and a parser to transform the fetched data into Models to be used by the controller.

## Logical Architecture

![Logical Architecture](https://user-images.githubusercontent.com/80169207/161722134-23d6d35e-ea0a-4e59-87e7-34f09911cdca.png)

- Calendar UI - Display calendar in multiple formats.
  - Dashboard UI - Display dashboard calendar.
  - Page UI - Display page calendar.
- Calendar Logic - Command the display of the Model given a set of parameters (e.g. filters, ongoing, past activities, etc…).
- Moodle Data Parser - Parse raw moodle data into concrete Dart Models.
- Networking - Obtain data from the UP member’s Moodle page.

# Physical Architecture

![Physical Architecture](https://user-images.githubusercontent.com/80169207/161722349-8710c6f4-1469-4d50-bc58-bd53c87f2656.png)

- UPMember Smartphone - The UP member’s smartphone where the Uni4All application will be running on.
  - Uni4All (Flutter) - Extended mobile application developed by NIAEFEUP (with Flutter) with our feature.
- Moodle Server
  - Web Server - Required to fetch the necessary data for our feature.
