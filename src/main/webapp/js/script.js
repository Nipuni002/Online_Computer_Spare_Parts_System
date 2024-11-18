let popup = document.getElementById("popup");

function openPopup() {
    // Get the submit button element
    let submitButton = document.querySelector("#myForm button[type='submit']");
    let buttonRect = submitButton.getBoundingClientRect(); // Get button's position on the screen

    // Position the popup slightly above the submit button
    popup.style.top = (buttonRect.top + window.scrollY - popup.offsetHeight - 10) + "px"; // 10px above the button
    popup.style.left = (buttonRect.left + window.scrollX + (submitButton.offsetWidth / 2) - (popup.offsetWidth / 2)) + "px"; // Center horizontally with the button

    popup.classList.add("open-popup");

    // Automatically close the popup after 2 seconds and submit the form
    setTimeout(function() {
        closePopup(); // Close the popup and submit the form
    }, 3000); // 3000 ms delay
}

function closePopup() {
    popup.classList.remove("open-popup");
    document.getElementById("myForm").submit(); // Submit the form after the popup is closed
}

function submitForm(event) {
    event.preventDefault(); // Prevent the form from submitting immediately
    openPopup(); // Show the popup
}



  
