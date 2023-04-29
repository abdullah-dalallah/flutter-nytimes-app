# ny_times

NY Times Most Popular Articles is simple flutter app to hit the NY Times Most Popular Articles API and show a list of articles, that shows details when items on the list are tapped (a typical master/detail app).

We'll be using the most viewed section of this API.

http://api.nytimes.com/svc/mostpopular/v2/mostviewed/{section}/{period}.json?api-key=sample-key 
To test this API, you can use all-sections for the section path component in the URL above and 7 for period (available period values are 1, 7 and 30, which represents how far back, in days, the API returns results for).

http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7.json?api-key=sample-key

## Requirements
  * Android Studio
  * Flutter SDK 3.7.11
  
## API Key
An API key is necessary to successfully connect to the [API](https://developer.nytimes.com/signup) that the app uses. Once an API key has been aquired, change the API_KEY property in lib/data/constants.dart and run the app.

# App Architecture
This sample follows Provider pattern + Clean Architecture.

## Model/Entities
The model is the domain object. It represents the actual data and/or information we are dealing with. An example of a model might be a contact (containing name, phone number, address, etc) or the characteristics of a live streaming publishing point.

The key to remember with the model is that it holds the information, but not behaviors or services that manipulate the information. It is not responsible for formatting text to look pretty on the screen, or fetching a list of items from a remote server (in fact, in that list, each item would most likely be a model of its own). Business logic is typically kept separate from the model, and encapsulated in other classes that act on the model.

## Data layer
Provides all required data to the repository in form of models/entities.

Remote data source
Manage all server/external API calls.

Local data source
Manage all local data storage: example SQLite implementation, sharedpreferences...

Repository
The decision maker class when it comes to manage data CRUD operations. Operations can be done in this layer is caching mechanism, manage consecutive api calls etc...

## Usecases/Interactors
Represents concepts of the business, information about the current situation and business rules.

## Provider 
Flutter Provider is a state management solution that makes it easier to manage and share data between different parts of a Flutter app. It is a popular choice for managing app state in Flutter because it is simple, flexible, and easy to use.

At a high level, Provider works by creating a "provider" object that holds a piece of data or functionality that you want to share between different parts of your app. You can then "listen" to changes to this data or functionality from any widget in your app, and update the UI in response to these changes.

One of the key benefits of Provider is that it allows you to separate your app's state management logic from your UI code. This makes it easier to maintain and test your code, and can also make your app more efficient because it avoids unnecessary UI updates.

Provider also offers a lot of flexibility in terms of how you manage and share state. You can use it to manage global app state, local state for individual screens or widgets, and more. Provider also integrates well with other popular Flutter packages like Flutter Bloc and Redux, so you can easily combine it with other state management solutions if you need more advanced functionality.

Overall, if you're building a Flutter app and need to manage and share state between different parts of your code, Provider is definitely worth considering as a simple, flexible, and powerful solution.


## Getting Started

This project is a starting point for a Flutter application.

# Major Libraries / Tools
Category |	Library/Tool | 	Link
|----------|----------|----------|
Development|	Flutter - Dart |	https://flutter.dev/
IDE|	Android Studio	|https://developer.android.com/studio
Unit| Testing	Flutter |Unit Test	https://docs.flutter.dev/cookbook/testing/unit/introduction
Presentation Layer Mangement|	provider |	https://pub.dev/packages/provider
HTTP Client |	Dio |	https://pub.dev/packages/dio
Image Caching|	cached_network_image|	https://pub.dev/packages/cached_network_image
Image loader | Shimmer | https://pub.dev/packages/shimmer
code generation package | json_serializable | https://pub.dev/packages/json_serializable

#Testing

## Running the Unit Tests
Unit testing for Flutter applications is fully explained in the [Flutter documentation](https://docs.flutter.dev/cookbook/testing/unit/introduction). In this repository, From Android Studio

  * Right Clicking on the Class and select "Run
  * To see the coverage we have t the select "Run with Coverage"


- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
