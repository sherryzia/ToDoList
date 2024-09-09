# iOS ToDo Application

This repository contains the source code for a ToDo application developed with SwiftUI, designed to help users manage their tasks efficiently and effectively. The app leverages Firebase for user authentication and Firestore for real-time data management.

## Features

- *User Authentication*: Secure login and signup functionalities powered by Firebase Authentication.
- *Real-Time Data Sync*: Tasks are stored and managed in Firestore, enabling real-time updates across all user devices.
- *Intuitive UI*: A clean and responsive interface built with SwiftUI, providing a seamless user experience.

## Technologies Used

- *SwiftUI*: Used for building the UI components with a declarative syntax.
- *Firebase Authentication*: Manages user authentication processes, ensuring security and ease of use.
- *Firestore*: A NoSQL database from Firebase used for storing and syncing data in real-time.

## Project Structure

### *ViewModels*
Responsible for handling the business logic and communication between the Views and Models.

- *LoginViewViewModel.swift*
  - Manages authentication logic and user input validation for the login process.
- *RegisterViewViewModel.swift*
  - Handles the user registration process including data validation and Firebase integration.
- *MainViewViewModel.swift*
  - Core logic for loading and updating the list of ToDo items.
- *NewItemViewViewModel.swift*
  - Manages the addition of new ToDo items to the database.
- *ProfileViewViewModel.swift*
  - Controls user profile data interactions.
- *ToDoListViewViewModel.swift*
  - Handles the retrieval and management of ToDo items, providing data to the view.
- *ToDoListItemViewViewModel.swift*
  - Manages the state and updates of individual ToDo items.

### *Views*
UI components that present data to the user and handle user interactions.

- *LoginHeaderView.swift*
  - Displays the header for the Login view.
- *LoginView.swift*
  - Provides fields and buttons for user authentication.
- *RegisterHeaderView.swift*
  - Displays the header for the Registration view.
- *RegisterView.swift*
  - Provides fields and buttons for user registration.
- *MainView.swift*
  - Main interface for viewing and interacting with ToDo items.
- *NewItemView.swift*
  - Interface for adding new ToDo items.
- *ProfileView.swift*
  - Displays and allows editing of user profile information.
- *ToDoListView.swift*
  - Lists all ToDo items.
- *ToDoListItemView.swift*
  - Displays a single ToDo item with options to edit or delete.

### *Models*
Data structures that represent the entities in the application.

- *User.swift*
  - Represents the user profile with attributes like name, email, etc.
- *ToDoListItem.swift*
  - Represent

## Setup and Installation

   ```bash
   git clone https://github.com/yourusername/ios-todo-app.git
Install Dependencies Navigate to your project directory and install the necessary packages.
=cd ios-todo-app
# Install any specific libraries or dependencies here
Run the Application Open the project in Xcode and run it on your chosen simulator or physical device.
