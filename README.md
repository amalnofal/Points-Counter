# 🏀 Points Counter App

A simple Flutter application designed to track and manage scores between two teams in real-time. Built to demonstrate effective state management using the **BLoC / Cubit** pattern.

## 🚀 Features
- Increment points for Team A and Team B (+1, +2, +3 points).
- Instant UI reactivity using `BlocBuilder`.
- Reset score functionality to clear points for both teams.

## 🛠️ Tech Stack & Architecture
- **Framework:** Flutter
- **Language:** Dart
- **State Management:** Flutter BLoC (`Cubit` & `BlocBuilder`)
- **Structure:** Clean separation of UI and business logic

## 📁 Project Structure
```text
lib/
├── cubits/
│   ├── counter_cubit.dart
│   └── counter_state.dart
├── views/
│   └── points_counter_view.dart
└── widgets/
    └── team_column.dart
