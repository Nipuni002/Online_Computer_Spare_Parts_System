<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Header Styles */
        header {
            background-color: #2a2a2a;
            padding: 10px;
            text-align: center;
        }

        header h1 {
            color: #FFA500;
            margin: 0;
        }

        /* Menu bar styles */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center; /* Vertically center items */
            background-color: rgba(51, 51, 51, 0.9); /* Add transparency with rgba */
            padding: 10px;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar-left, .navbar-right {
            display: flex;
            align-items: center; /* Vertically align items */
            gap: 20px;
        }

        .navbar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
            border-radius: 5px;
        }

        .navbar a:hover {
            background-color: #FFA500;
        }

        /* News Ticker Container */
        .news-ticker {
            width: 100%;  /* Full width of the container */
            overflow: hidden;  /* Hide the overflowing text */
            background-color: #2a2a2a; /* Optional background color */
            padding: 10px 0;
            border: 1px solid #FFA500; /* Optional border */
        }

        /* News ticker text styles */
        .news-ticker h1 {
            display: inline-block;
            white-space: nowrap; /* Prevents text from wrapping */
            color: #FFA500;
            font-size: 36px;
            letter-spacing: 2px;
            animation: ticker 15s linear infinite; /* Continuous ticker animation */
        }

        /* Ticker Animation */
        @keyframes ticker {
            0% {
                transform: translateX(100%); /* Start off-screen to the right */
            }
            100% {
                transform: translateX(-100%); /* End off-screen to the left */
            }
        }

        /* Profile icon styles */
        .menu-icon {
            width: 30px; /* Size of the profile icon */
            height: 30px; /* Ensure the height is proportionate */
            cursor: pointer; /* Pointer cursor on hover */
        }

        /* Logo size */
        .logo {
            height: 40px; /* Adjust the logo height */
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="news-ticker">
            <h1>Welcome to CYBER MART</h1>
        </div>
    </header>

    <!-- Menu Bar -->
    <div class="navbar">
        <!-- Left Section -->
        <div class="navbar-left">
            <img src="image/cc.png" alt="Logo" class="logo">
            <a href="home1.jsp">Home</a>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="#">Contact</a>
        </div>
        
        <!-- Right Section -->
        <div class="navbar-right">
            <a href="home.jsp">Returns/Refunds</a>
            <a href="#">Feedback</a>
            <a href="#">Build PC</a>
            <img src="image/user.png" alt="Profile Icon" class="menu-icon">
        </div>
    </div>
</body>
</html>
