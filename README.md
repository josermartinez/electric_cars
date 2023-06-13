# Electric Cars

A Flutter app designed to help users locate electric vehicle charging stations and provide information about available vehicles. The app is built using clean architecture and a feature-first approach.

![App Screenshots](./docs/app_screenshots.webm)

## Features

- Locate electric vehicle charging stations using Google Maps
- Retrieve vehicle and station information using GraphQL

## Libraries and Architecture

- **Clean Architecture**: The app is structured using clean architecture principles, ensuring separation of concerns and maintainability.
- **Feature-first approach**: Each feature is developed and organized independently, promoting modularity and scalability.
- **Get_it**: A dependency injection library used to manage dependencies and streamline app development.
- **Google Maps**: Integrated to display the location of electric vehicle charging stations.
- **Bloc**: A state management library used to handle the app's state and improve performance.
- **GraphQL**: A query language used to fetch vehicle and station information efficiently.
- **GeoLocator**: A library to handle location permissions and location data.

## Getting Started

- A script under build-scripts/sync.sh was created to sync the project. Please run this script before start
- For google maps, an API key is required. The api key have to be added on the android manifest and the APPDelegate class for iOS. For more information about how to get the api key please visit https://console.cloud.google.com/google/maps-apis/credentials 

