# ![Pokébola](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/poke-ball.png) Pokédex App

![Flutter](https://img.shields.io/badge/Flutter-3.0%2B-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.0%2B-0175C2?logo=dart&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)

A modern and complete Pokédex Flutter application. The app consumes data from [PokeAPI](https://pokeapi.co/) and implements advanced features such as caching, pagination, and filters.

---

## ✨ Implemented Features

### ✅ Level 1
- [x] Pokémon listing with image and name
- [x] Details screen displaying:
  - High-resolution image
  - Name
  - Height
  - Weight

### ✅ Level 2
- [x] **Intelligent Cache System**
  - Local cache with Isar Database
  - Automatic API synchronization
  - Update verification by count
- [x] **Search filter by name** in listing
- [x] Extended details with:
  - **Types** (with themed colors)
  - **Abilities** (normal and hidden)

### ✅ Level 3
- [x] **Custom Splash Screen**
- [x] **Automatic cache cleanup** when closing the app
  - List cache maintained
  - Detail cache automatically cleared
- [x] **Pagination** implemented
  - 20 pokémons per page
  - Navigation with Previous/Next buttons
  - Auto-scroll when changing pages
- [x] **Advanced filters**
  - Listing by type
  - Listing by ability
  - Navigation between related pokémons

### 🌟 Extra Points
- [x] **MVVM Architecture with Services**
  - Clear separation of responsibilities
  - Service Layer for business logic
  - Controllers focused on state management
- [x] **Firebase Crashlytics** configured

---

## 🏗️ Architecture

The project follows an **MVVM (Model-View-ViewModel) architecture with Service Layer**, ensuring separation of concerns and testable code:

```
lib/
├── src/
│   ├── commons/          # Shared helpers and utilities
│   ├── constants/        # Application constants
│   ├── controllers/      # ViewModels (manage UI state)
│   ├── database/         # Persistence layer (Isar)
│   ├── models/           # Data models
│   ├── pages/            # Application screens
│   ├── repositories/     # API communication
│   ├── services/         # Business logic and cache
│   ├── widgets/          # Reusable components
│   ├── dependencies.dart # Dependency injection
│   └── routes.dart       # Route configuration
└── main.dart
```

### Data Flow

```
┌─────────────────────────────────┐
│    UI (Pages/Widgets)           │
│  - HomePage                     │
│  - PokemonDetailPage            │
└─────────────────┬───────────────┘
                  ↓
┌─────────────────────────────────┐
│    Controllers (ViewModel)      │
│  - Manages States (Signals)     │
│  - Orchestrates Services        │
│  - UI/Pagination Logic          │
└─────────────────┬───────────────┘
                  ↓
┌─────────────────────────────────┐
│      Service Layer              │
│  - Business Logic               │
│  - Cache Management             │
│  - API/Local Synchronization    │
└─────────┬───────────────┬───────┘
          ↓               ↓
┌──────────────┐  ┌──────────────┐
│ Repository   │  │  Database    │
│  (API)       │  │  (Isar)      │
└──────────────┘  └──────────────┘
```

---

## 🚀 How to Run the Project

### Prerequisites

- Flutter SDK 3.0+
- Dart SDK 3.0+
- Android Studio / Xcode
- Firebase Account (for Crashlytics)

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/JhefersonReis/im-mottu-mobile.git
cd im-mottu-mobile
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Configure Firebase**
   - Add your `google-services.json` (Android) to `android/app/`
   - Add your `GoogleService-Info.plist` (iOS) to `ios/Runner/`

4. **Generate required files**

   You can either run a one-time build or use watch mode to recompile automatically on changes to files observed by the build runner:

   - One-time build:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

   - Watch (recompiles automatically when watched files change):
   ```bash
   flutter pub run build_runner watch --delete-conflicting-outputs
   ```

   Note: the --delete-conflicting-outputs flag is recommended to avoid conflicts with generated files.

5. **⚠️ IMPORTANT Configuration for Android**
   
   Due to a known issue in the `isar_flutter_libs` package (v3.1.0+1), you need to manually add the namespace:
   
   - Navigate to: `C:\Users\{YOUR_USERNAME}\AppData\Local\Pub\Cache\hosted\pub.dev\isar_flutter_libs-3.1.0\android\build.gradle`
   - Add the following line inside the `android` block:
   ```gradle
   android {
       namespace 'dev.isar.isar_flutter_libs'
       // ... rest of configuration
   }
   ```
   
   **Reference:** [Stack Overflow - Flutter Isar Database namespace issue](https://stackoverflow.com/questions/79031081/flutter-isar-database-v3-1-01-namespace-not-defined)

6. **Run the app**
```bash
# Android
flutter run

# iOS
flutter run -d ios
```

---

## 📦 Main Packages Used

| Package | Version | Description |
|--------|--------|-----------|
| `dio` | ^5.7.0 | HTTP client for requests |
| `isar` | ^3.1.0+1 | Local NoSQL database |
| `signals` | ^5.5.0 | Reactive state management |
| `get_it` | ^8.0.2 | Dependency injection |
| `go_router` | ^14.6.2 | Declarative navigation |
| `result_dart` | ^1.1.0 | Functional error handling |
| `firebase_crashlytics` | ^4.1.3 | Error monitoring |
| `toastification` | ^2.3.0 | User notifications |

---

## 🐛 Crashlytics

The app is configured with Firebase Crashlytics for production error monitoring:

- Automatic exception capture
- Detailed stack traces
- Custom logs for debugging
- Integration with Firebase Console

---

