# Todo List App

A simple Todo list application built with Flutter.

## Features

- Add new tasks to your todo list
- Mark tasks as completed
- Delete tasks from the list
- Clean and intuitive user interface

## Getting Started

### Prerequisites

- Flutter SDK
- An IDE (VS Code, Android Studio, etc.)
- Android or iOS device/emulator

### Running the app

1. Clone this repository
2. Navigate to the project directory
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the app

## Usage

- Add a new task: Type the task in the text field at the top and press "Add"
- Mark a task as complete: Tap the checkbox next to the task
- Delete a task: Tap the delete icon next to the task

## App Structure

- `lib/models/todo.dart`: Contains the Todo model class
- `lib/widgets/todo_list.dart`: Widget for displaying the list of todos
- `lib/widgets/todo_form.dart`: Widget for adding new todos
- `lib/screens/home_screen.dart`: Main screen containing the todo list and form
- `lib/main.dart`: Entry point of the application
