## Command to Run

To ensure smooth performance, always start the app with the following command:
```bash
flutter run --no-enable-impeller
```

---

# Flutter Spark Task

Welcome to the **Flutter Spark Task** repository! This project showcases a Flutter application built as part of a technical challenge to analyze and present customer order data interactively. The app supports multiple languages (Arabic and English) and follows best practices in state management and responsive design.

---

## Table of Contents
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Setup Instructions](#setup-instructions)
- [Command to Run](#command-to-run)
- [Screenshots](#screenshots)
- [Acknowledgments](#acknowledgments)

---

## Features

- **Multilingual Support**: The app supports both Arabic and English languages, with seamless switching.
- **Data Visualization**: Displays order data as a graph showing:
  - X-axis: Months
  - Y-axis: Number of orders per month
- **Key Metrics**:
  - Total orders
  - Average sales
  - Number of returns
- **Dynamic Onboarding Slides**: Interactive onboarding experience for new users.
- **Modern UI/UX**: Beautiful design with animations and responsive layouts.

---

## Tech Stack

This project utilizes the following tools and libraries:

### Main Dependencies

```yaml
flutter:
  sdk: flutter
dartz: ^0.10.1
fl_chart: ^0.70.0
flutter_bloc: ^8.1.6
flutter_localizations:
  sdk: flutter
flutter_screenutil: ^5.9.3
flutter_spinkit: ^5.2.1
get_it: ^8.0.3
go_router: ^14.6.2
intl: ^0.19.0
shared_preferences: ^2.3.4
shimmer: ^3.0.0
```

### Development Dependencies

```yaml
flutter_lints: ^5.0.0
flutter_test:
  sdk: flutter
```

---

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/MostafaKader56/flutter_spark_sys_task.git
   ```

2. Navigate to the project directory:
   ```bash
   cd flutter_spark_task
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run --no-enable-impeller
   ```
   > **Note:** The app runs successfully only with the `--no-enable-impeller` flag due to known issues.

---

## Screenshots

### Onboarding Screens
1. Welcome Screen
2. Data Insights
3. Metrics Setup
4. Graphical Visualization
5. Final Steps

---

## Acknowledgments

This project is created as part of a technical task provided by **Sparkle Systems Company**. Special thanks to the reviewers for their guidance and support!

---

## License

This project is for demonstration purposes only and is not intended for production use.
