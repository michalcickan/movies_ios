# Movies

A SwiftUI application using SwiftData for persistent storage. **Movies** provides a clean, list-based interface for managing timestamped movie entries. The app is structured for extensibility, making it easy to add more details or features as needed.

## Features

- **SwiftUI Interface:** Modern, declarative UI for smooth navigation.
- **SwiftData Persistence:** All movie items are stored locally in a SQLite file.
- **Navigation Architecture:** Uses coordinators and routers for modular screen transitions.
- **List & Detail Views:** Browse all stored movies and view their details.

## Structure

- `Item` model: Represents a timestamped movie entry, persisted with SwiftData.
- `HomeView`: Lists all movie entries.
- `DetailView`: Displays details about the selected movie.
- Coordinators/Routers: Manage navigation and presentation logic.
- `ModelContainer`: Handles SwiftData storage, saving data to `Movies.sqlite` in the Documents directory.

## Getting Started

### Prerequisites

- Xcode 15 or later
- macOS 13 or later (adjust as per your SwiftData deployment target)

### Build & Run

1. Clone this repository.
2. Open the project in Xcode.
3. Build and run on your target simulator or device.

### Usage

- Launch the app.
- Browse the list of movies (timestamped entries).
- Tap an entry to see its details.
- Extend the model and UI as needed for more features!

## Customization

To track more than timestamps:
- Expand the `Item` model (e.g., add `title`, `genre`, `rating`).
- Update `HomeView` and `DetailView` to display more information.

## Dependencies

- [SwiftUI](https://developer.apple.com/xcode/swiftui/)
- [SwiftData](https://developer.apple.com/documentation/swiftdata/)

## License

MIT License. See [LICENSE](LICENSE) for details.
