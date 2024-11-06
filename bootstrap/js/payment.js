console.log("Work")

var Cnumber = document.getElementById("Cnumber");
var PID = document.getElementById("PID");
var EDate = document.getElementById("date");
var Name = document.getElementById("Name");
var Success = document.getElementById("Psuccess");
var text = document.getElementById("text");
var Type = document.getElementById("card-type");
var Check = document.getElementById("check");

Name.addEventListener("keyup", function(event) {

    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
    } else {
        text.style.display = "none"
    }
});

PID.addEventListener("keyup", function(event) {
    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
    } else {
        text.style.display = "none"
    }
});

Check.addEventListener('click',function(){
    if(Cnumber.value == ""){
        Numerror.style.display = "inline";
    }
    else{
        Numerror.style.display = "none"
    }
});

Check.addEventListener('click',function(){
    if(PID.value == ""){
        PIDerror.style.display = "inline";
    }
    else{
        PIDerror.style.display = "none"
    }
});


Check.addEventListener('click',function(){
    if(Name.value == ""){
        nameerror.style.display = "inline";
    }
    else{
        nameerror.style.display = "none";
    }
});

Check.addEventListener('click',function(){
    if(Cnumber.value == "" || PID.value == "" || EDate.value == "" || Name.value == ""){
        Psuccess.style.display = "none";

    }
    else{
        Psuccess.style.display = "inline"
    }
});