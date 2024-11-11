# Food Ordering Mobile Application Documentation
**(Flutter Mobile Developer Assignment)**

**Author**: Mohamed Nilshad  
**Email**: mohamednilshad8@gmail.com  
**Phone**: +94 777 192 608  
**Submission Date**: 12.11.2024

---

## Technologies Used
- **Flutter**: Version 3.22.2
- **State Management**: Provider
- **Architecture**: Clean Architecture

---

## Features

### Splash Screen
- **Data Loading**: Loads initial data from a JSON file during the splash screen display.
    - This process ensures the app is preloaded with data, reducing loading times on the Menu/Home Screen and enhancing user experience.

### Home Screen
- Displays lists of menus, categories, and food items.
- Includes a **refresh function** to update data and reflect the latest menu options (pull-down to refresh).

### Additional Screens
- **Menu/Category Screen**: Lists food categories, allowing users to browse items within each category and menu.
- **Details Screen**: Shows detailed information for each food item, including descriptions, prices, and available options.
- **Modify Screen**: Displays items added by the user, allowing them to update selected food items by adding toppings, adjusting quantities, etc.

---

## Running the Project on Another Computer

### Prerequisites
1. **Flutter SDK**: Install the latest version of Flutter (3.22.2) from [Flutter's official website](https://flutter.dev/docs/get-started/install).
2. **Android Studio**: Install Android Studio as the IDE.
3. **Device or Emulator**: Set up a physical device or emulator to run the application.

### Steps to Run the Project

1. **Clone the Repository**:
    - Open a terminal and clone the project repository:
      ```bash
      git clone https://github.com/mohamedNilshad/food_ordering_application.git
      ```

2. **Install Dependencies**:
    - Navigate to the project directory and run:
      ```bash
      flutter pub get
      ```
    - This command installs all necessary packages and dependencies.

3. **Run the Application**:
    - Connect a physical device or start an emulator.
    - In the project directory, run:
      ```bash
      flutter run
      ```

### Troubleshooting
- If any issues occur, ensure that all dependencies are up to date and that the Flutter SDK is correctly installed and configured.
- Open the `android` folder in Android Studio to download the necessary Gradle files. (Downloading these files may take some time.)


### Visit the Drive for get APK file and Food ordering app functioning video
- https://drive.google.com/drive/folders/1-Yc9qsgdiYsFus2G5PVQabVZrOk9MgSf?usp=sharing