# SpaceX Latest Launch Info App

## Overview

This Flutter application provides detailed information about SpaceX's latest launch, including:
- A YouTube video of the launch.
- A link to the Reddit discussion page.
- A Wikipedia page with detailed information about the launch.

The app utilizes the following packages:
- `dio` for making HTTP requests.
- `youtube_player_flutter` for embedding YouTube videos.
- `webview_flutter` for displaying web pages.

## Features

- Fetch and display details about the latest SpaceX launch.
- Embed and play a YouTube video of the launch.
- Provide links to the Reddit discussion page and Wikipedia page.
- Display these web pages within the app using web views.

## Requirements

- Flutter SDK: >= 2.5.0
- Dart: >= 2.12.0

## Packages Used

- `dio`: For making HTTP requests to fetch launch data.
- `youtube_player_flutter`: For embedding and playing YouTube videos.
- `webview_flutter`: For displaying Reddit and Wikipedia pages within the app.

## Getting Started

### Prerequisites

Ensure you have the Flutter SDK installed. You can download it from [Flutter's official site](https://flutter.dev/docs/get-started/install).

### Installation

BURAYI DUZELT

1. **Clone the repository:**
   ```sh
   git clone https://https://github.com/SADIK1703/spacex_last_flight.git
   cd spacex_launch_info_app
   flutter pub get
   flutter run
   ```

## Directory Structure
lib/ \n
├── main.dart \n
├── services/ \n
│ └── request_service.dart  \n
├── views/ \n
│ ├── home_page.dart \n
│ ├── youtube_video_page.dart \n
│ └── webview_page.dart \n
└── widgets/ \n
└── custom_app_bar.dart \n

## Functionality

- **main.dart**: Initializes global values, fetches the latest flight information, and starts the app.
  
- **services/request_service.dart**: Manages fetching the latest SpaceX launch details using dio.

- **views/home_page.dart**: Displays launch details and provides navigation to YouTube video, Reddit page, and Wikipedia page.

- **views/youtube_video_page.dart**: Embeds and plays YouTube videos using youtube_player_flutter.

- **views/webview_page.dart**: Displays Reddit and Wikipedia pages within the app using webview_flutter.

- **widgets/custom_app_bar.dart**: Provides a custom app bar widget for consistent app design.

## Conclusion

This application provides users with the latest information on SpaceX launches, including video, discussions, and detailed information. Ensure all dependencies are installed and configured properly before running the app. If you encounter any issues, refer to the official documentation of each package used.
