console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  url: 'http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b',
  type: 'GET',
  success: function(weather) {
    console.log(weather);
  },
  error: function() {
    console.log("error");
  }
});
// Add another console log here, outside your AJAX request
console.log("a thing did something");
