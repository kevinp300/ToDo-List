# To-Do List iOS Application

The To-Do List iOS Application is a simple yet powerful task management tool built specifically for iOS devices. It allows users to easily create, organize, and track their daily tasks, ensuring they stay organized and productive. This project leverages advanced iOS frameworks and follows modern design patterns to provide a seamless and intuitive user experience.

Features
Task Creation and Management: Users can effortlessly create new tasks by providing a title and description. They can then manage their tasks by marking them as complete or deleting them when they are no longer needed. The application provides a clean and user-friendly interface for efficient task management.

Task Organization and Categorization: Users can organize their tasks using categories or tags, allowing them to group related tasks together for better organization and prioritization. This feature helps users stay focused on specific areas of their lives or projects.

Reminders and Notifications: The application includes a robust notification system to ensure users never miss an important task. Users can set due dates and times for their tasks, and the application will send timely reminders as local notifications, even when the app is not actively running. Users can conveniently mark tasks as complete directly from the notification interface.

Technical Details
Data Persistence with Core Data: The application utilizes the Core Data framework to provide efficient and reliable data persistence. Tasks are stored as managed objects, enabling seamless CRUD operations and ensuring data integrity. The Core Data framework allows for easy storage and retrieval of tasks, even across app launches.

Local Notifications with UserNotifications Framework: The UserNotifications framework is employed to enable task reminders and notifications. Tasks with due dates and times are scheduled as local notifications, providing users with timely reminders. The notification interface supports actions such as marking tasks as complete without opening the app.

Model-View-ViewModel (MVVM) Architecture: The project follows the MVVM design pattern, ensuring a clear separation of concerns and enhanced maintainability. The application architecture comprises models that represent tasks, view models that handle business logic and data binding, and views that display the user interface. MVVM facilitates seamless synchronization between the model and view, allowing real-time updates and smooth interaction.

Getting Started
To run the To-Do List iOS Application on your iOS device or simulator, follow these steps:

Clone the project repository to your local machine.
Open the project in Xcode by double-clicking the .xcworkspace file.
Configure the project settings, including provisioning profiles and signing certificates.
Build and run the application on your preferred iOS device or simulator.
Start managing your tasks effectively and enjoy the productivity boost!
Requirements
iOS 13.0 or later
Xcode 11.0 or later
Dependencies
None
License
This project is licensed under the MIT License, allowing you to use, modify, and distribute the code freely. Please refer to the license file for more details.

Authors
Kevin Perez
