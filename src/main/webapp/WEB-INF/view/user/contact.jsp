<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Out More</title>
    <link rel="stylesheet" href="css/styles.css"> <!-- Link to your CSS file -->
</head>
<body>
    <div class="container">
        <p>We'd love to hear from you! Fill out the form below and we'll get back to you as soon as possible.</p>

       <form action="https://api.web3forms.com/submit" method="POST">
       <input type="hidden" name="access_key" value="daa946c2-66c3-4208-a34c-8fd144c688af">
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="text" id="phone" name="phone">
            </div>

            <div class="form-group">
                <label for="message">Your Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
            </div>

            <div class="form-group">
                <button type="submit">Submit</button>
            </div>
        </form>

        <div class="back-link">
            <a href="home">Back to Home</a>
        </div>
    </div>
</body>
</html>
<style>
/* styles.css */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: black;
}

.container {
    background-color: #fff;
    padding: 20px 40px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 500px;
    width: 100%;
}

h1 {
    font-size: 2em;
    margin-bottom: 20px;
    color: #333;
    text-align: center;
}

p {
    font-size: 1.1em;
    color: #555;
    margin-bottom: 20px;
    text-align: center;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    color: #333;
}

input[type="text"],
input[type="email"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1em;
    color: #555;
}

input[type="text"]:focus,
input[type="email"]:focus,
textarea:focus {
    border-color: #007BFF;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

textarea {
    resize: vertical;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 1em;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #0056b3;
}

.back-link {
    text-align: center;
    margin-top: 20px;
}

.back-link a {
    color: #007BFF;
    text-decoration: none;
    font-weight: bold;
}

.back-link a:hover {
    text-decoration: underline;
}

</style>
<script src="https://smtpjs.com/v3/smtp.js"></script>