function myFunction() {
  // Get the text field
  var copyText = document.getElementById("copy-this-input");

  // Select the text field
  copyText.select();
  copyText.setSelectionRange(0, 99999); // For mobile devices

   // Copy the text inside the text field
  navigator.clipboard.writeText(copyText.value);
}


// Select button by id
const MyButton = document.getElementById("copy-this-button");
// Add on click listener for button
MyButton.addEventListener('click', function() {
	// Select (h1) heading by id, and then change it's value to (bananas)
	document.getElementById("copy-this-heading").innerText = "Text copied!"
});
