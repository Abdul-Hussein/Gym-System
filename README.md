
# Gym Management System

This Gym Management System is a web application that allows gym administrators and members to manage various aspects of gym operations, including trainer bookings, membership packages, and more. The system is divided into two main modules: Administrator and Member.

## Table of Contents

- [Features](#features)
  - [Administrator Module](#administrator-module)
  - [Member Module](#member-module)
- [Data Model](#data-model)
  - [Users](#users)
  - [Trainers](#trainers)
  - [Packages](#packages)
  - [Memberships](#memberships)
  - [Bookings](#bookings)
  - [Contact Form](#contact-form)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)


## Features

### Administrator Module

1. **Admin Registration and Login**
   - Admins can register and log into the system using their name, email, and password.

2. **Add/View Trainers**
   - Admins can add new trainers to the system and view a list of all registered trainers, including their expertise.

3. **Add/View Packages**
   - Admins can add new membership packages and view all available packages, including the package name, description, price, and duration.

4. **Register/Search Members**
   - Admins can register new members, search for existing members by ID or name, and view their details, including their availability for training.

5. **Add/View Memberships**
   - Admins can assign memberships to members and view all memberships in the system, including the start and end dates.

### Member Module

1. **Member Registration and Login**
   - Members can register and log into the system using their name, email, and password, and specify their available days for training.

2. **View Packages**
   - Members can view all available membership packages, including the package name, description, price, and duration.

3. **View Trainers**
   - Members can view a list of all trainers, including their names and areas of expertise.

4. **View Membership Details**
   - Members can view details of their own membership, including the package name and membership duration.

5. **View Other Members**
   - Members can view a list of other members in the gym, including their names.

6. **Book a Trainer**
   - Members can book a session with a trainer by selecting the trainer and specifying the session date and type.

7. **Contact Form to Book a Package**
   - Members can fill in a contact form to book a membership package by providing their name, email, phone number, preferred start date, and any additional notes.

## Data Model

### Users

- **User ID**: A unique identifier for the user.
- **Name**: The full name of the user.
- **Email**: The email address of the user.
- **Password**: A secure, encrypted password for the user.
- **Role**: The role of the user (`ADMIN` or `MEMBER`).
- **Available Days**: A list of days the member is available for training.

### Trainers

- **Trainer ID**: A unique identifier for the trainer.
- **Name**: The full name of the trainer.
- **Expertise**: The area of expertise or specialization of the trainer.

### Packages

- **Package ID**: A unique identifier for the package.
- **Name**: The name of the package.
- **Description**: A brief description of the package.
- **Price**: The cost of the package.
- **Duration**: The length of time the package is valid.

### Memberships

- **Membership ID**: A unique identifier for the membership.
- **Member ID**: The unique identifier for the member who owns the membership.
- **Package ID**: The unique identifier for the selected package.
- **Start Date**: The start date of the membership.
- **End Date**: The end date of the membership.

### Bookings

- **Booking ID**: A unique identifier for the booking.
- **Trainer ID**: The unique identifier for the booked trainer.
- **Member ID**: The unique identifier for the member making the booking.
- **Session Date**: The date and time of the booked session.
- **Session Type**: The type of training session booked.

### Contact Form

- **Member Name**: The full name of the member.
- **Email**: The email address of the member.
- **Phone Number**: The contact number of the member.
- **Package ID**: The unique identifier for the package the member wants to book.
- **Preferred Start Date**: The preferred start date for the package.
- **Additional Notes**: Any additional notes or preferences from the member.

## Getting Started

### Prerequisites

- Java (JDK 8 or higher)
- Apache Tomcat
- MySQL or any other relational database
- Maven (for dependency management)
- Web browser (for accessing the web application)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Abdul-Hussein/Gym-System.git
   ```

2. Navigate to the project directory:
   ```bash
   cd gym-management-system
   ```

3. Configure the database connection in `src/main/resources/application.properties`.

4. Build the project using Maven:
   ```bash
   mvn clean install
   ```

5. Deploy the WAR file to Apache Tomcat.

6. Access the application in your web browser at `http://localhost:8093/gym-mgmt/login`.

## Usage

- **Administrator**: Create a single admin user from the database to log in and manage trainers, packages, members, and memberships.
- **Member**: Register or log in to view trainers, packages, membership details, book trainers, and fill out the contact form to book packages.


