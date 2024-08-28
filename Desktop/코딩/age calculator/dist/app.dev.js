"use strict";

// variables For Datepicker
var datepicker = document.getElementById('datePicker');
var choseDate = document.getElementById('choseDate');
ageYear = document.getElementById('ageYear');
ageMonth = document.getElementById('ageMonth');
ageDays = document.getElementById('ageDays');
ageHours = document.getElementById('ageHours');
ageSeconds = document.getElementById('ageSeconds');
ageMiliSeconds = document.getElementById('ageMiliSeconds');
datepicker.addEventListener('change', function () {
  var options = {
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  };
  var selectedDate = new Date(this.value);
  var DOB = selectedDate.toLocaleDateString('en-US', options);
  choseDate.innerHTML = "DOB : " + " " + DOB;
  var miliSeconds_Btw_DOB = Date.parse(DOB);
  var miliSecond_Btw_Now = Date.now();
  var age_in_MiliSeconds = miliSecond_Btw_Now - miliSeconds_Btw_DOB; //console.log(age_in_MiliSeconds);

  var miliSeconds = age_in_MiliSeconds;
  var second = 1000;
  var minute = second * 60;
  var hour = minute * 60;
  var day = hour * 24;
  var month = day * 30;
  var year = day * 365;
  var years = Math.round(miliSeconds / year);
  var months = years * 12;
  var days = years * 365;
  var hours = Math.round(miliSeconds / hour);
  var seconds = Math.round(miliSeconds / second); // Now it is time to print values in boxes 

  ageYear.innerHTML = years;
  ageMonth.innerHTML = months;
  ageDays.innerHTML = days;
  ageHours.innerHTML = hours;
  ageSeconds.innerHTML = seconds;
  ageMiliSeconds.innerHTML = miliSeconds;
  document.querySelector('.age-calc').classList.add('expand');
});
//# sourceMappingURL=app.dev.js.map
