console.log("Work")

var isbn = document.getElementById('isbn');
var title = document.getElementById("title");
var author = document.getElementById("author");
var price = document.getElementById("price");
var description = document.getElementById("description");
var chooseFile = document.getElementById("choosefile");
var submit = document.getElementById("submit");
var error = document.getElementById("error");
var success = document.getElementById("success");
var isbnerror = document.getElementById("isbnerror");
var tittleerror = document.getElementById("tittleerror");
var authorerror = document.getElementById("authorerror");
var priceerror = document.getElementById("priceerror");
var descerror = document.getElementById("descerror");
var chooseerror = document.getElementById("chooseerror");
var text = document.getElementById("text");

submit.addEventListener('click', function() {
    if(isbn.value == "" ||
        title.value == "" ||
        author.value == "" ||
        description.value == ""
    ) {
        error.style.display = "inline";
        success.style.display = "none";
    } else {
        success.style.display = "inline";
        error.style.display = "none";
    }
});

submit.addEventListener('click',function(){
    if(isbn.value == ""){
        isbnerror.style.display = "inline";
    }
    else{
        isbnerror.style.display = "none"
    }
});
submit.addEventListener('click',function(){
    if(title.value == ""){
        titleerror.style.display = "inline";
    }
    else{
        tittleerror.style.display = "none"
    }
});
submit.addEventListener('click',function(){
    if(author.value == ""){
        authorerror.style.display = "inline";
    }
    else{
        authorerror.style.display = "none"
    }
});
submit.addEventListener('click',function(){
    if(price.value == ""){
        priceerror.style.display = "inline";
    }
    else{
        priceerror.style.display = "none"
    }
});
submit.addEventListener('click',function(){
    if(description.value == ""){
        descerror.style.display = "inline";
    }
    else{
        descerror.style.display = "none"
    }
});


author.addEventListener("keyup", function(event) {

    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
    } else {
        text.style.display = "none"
    }
});
description.addEventListener("keyup", function(event) {

    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
    } else {
        text.style.display = "none"
    }
});
title.addEventListener("keyup", function(event) {

    if (event.getModifierState("CapsLock")) {
        text.style.display = "block";
    } else {
        text.style.display = "none"
    }
});