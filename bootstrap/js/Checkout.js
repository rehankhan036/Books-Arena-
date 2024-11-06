console.log("Work")

var text = document.getElementById("text");
var Ninput = document.getElementById("name");
var Address = document.getElementById("address");
var City = document.getElementById("city");
var Country = document.getElementById("country");
var Submit = document.getElementById("submit");
var Zip = document.getElementById("zip");
var Success = document.getElementById("Ssuccess");

Ninput.addEventListener("keyup", function(event) {

    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
      } else {
        text.style.display = "none"
      }
});
Address.addEventListener("keyup", function(event) {

    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
      } else {
        text.style.display = "none"
      }
});
City.addEventListener("keyup", function(event) {

    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
      } else {
        text.style.display = "none"
      }
});
Country.addEventListener("keyup", function(event) {

    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
      } else {
        text.style.display = "none"
      }
});

Submit.addEventListener('click',function(){
    if(Ninput.value == ""){
        Snameerror.style.display = "inline";
    }
    else{
        Snameerror.style.display = "none"
    }
});
Submit.addEventListener('click',function(){
    if(Address.value == ""){
        addresserror.style.display = "inline";
    }
    else{
        addresserror.style.display = "none"
    }
});
Submit.addEventListener('click',function(){
    if(City.value == ""){
        cityerror.style.display = "inline";
    }
    else{
        cityerror.style.display = "none"
    }
});
Submit.addEventListener('click',function(){
    if(Zip.value == ""){
        ziperror.style.display = "inline";
    }
    else{
        ziperror.style.display = "none"
    }
});
Submit.addEventListener('click',function(){
    if(Country.value == ""){
        countryerror.style.display = "inline";
    }
    else{
        countryerror.style.display = "none"
    }
});
Submit.addEventListener('click',function(){
    if(Ninput.value == "" || Address.value == "" || City.value == "" || Zip.value == "" || Country.value == ""){
        Ssuccess.style.display = "none";
    }
    else{
        Ssuccess.style.display = "inline";
    }
});
