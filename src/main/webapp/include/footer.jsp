<!DOCTYPE html>
<!-- Coding By CodingNepal - www.codingnepalweb.com -->
<html lang="en">
<head>
    <style>
       /* Footer Styles */
footer {
    background-color: #2a2a2a;
    padding: 20px;
    text-align: center;
    color: #ccc;
    position: relative; /* Added for positioning the image */
}

footer p {
    margin: 0;
}

footer .footer-links {
    margin-bottom: 10px;
}

footer .footer-links a {
    color: #FFA500;
    margin: 0 10px;
    text-decoration: none;
}

.social-media {
    margin: 10px 0;
}

.social-media a {
    margin: 0 10px;
    color: #FFA500;
    text-decoration: none;
    font-size: 24px;
}

.footer-search {
    margin: 20px 0;
}

.footer-search input[type="text"] {
    padding: 8px;
    border: none;
    border-radius: 5px;
    width: 200px;
}

.footer-search button {
    padding: 8px 12px;
    border: none;
    background-color: #FFA500;
    color: white;
    border-radius: 5px;
    cursor: pointer;
}

.footer-search button:hover {
    background-color: #cc8400;
}

.footer-email {
    margin: 20px 0;
}

.footer-email input[type="email"] {
    padding: 8px;
    border: none;
    border-radius: 5px;
    width: 200px;
}

.footer-email button {
    padding: 8px 12px;
    border: none;
    background-color: #FFA500;
    color: white;
    border-radius: 5px;
    cursor: pointer;
}

.footer-email button:hover {
    background-color: #cc8400;
}

/* Added styles for the footer image */
.footer-image {
    position: absolute;
    right: 20px; /* Adjust as needed */
    top: 20px; /* Adjust as needed */
    max-width: 100px; /* Adjust image size */
}

.hover-card-container {
    display: flex;
    justify-content: space-around;
    padding: 20px;
}

    </style>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
   <footer>
        <div class="footer-links">
            <a href="#">Terms of Service</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Shipping Policy</a>
        </div>

        <div class="social-media">
            <h4>Follow Us:</h4>
            <a href="#" aria-label="Facebook">Facebook</a>
            <a href="#" aria-label="Instagram">Instagram</a>
        </div>

        <div class="footer-email">
            <input type="email" placeholder="Enter your email" required>
            <button type="submit">Subscribe</button>
        </div>

        <p>&copy; 2024 Your Store. All rights reserved.</p>

        <!-- Add your image here -->
        <img src="image/cc.png" alt="Footer Image" class="footer-image"> <!-- Replace with your image URL -->
    </footer>
</body>
</html>
