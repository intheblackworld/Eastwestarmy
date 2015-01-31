# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

var countdownnumber=5;
var countdownid;
function initial(){ countdownfunc(); }
function countdownfunc(){
 var x=document.getElementById("countdown");
 x.innerHTML=countdownnumber;
 if (countdownnumber==0){ 
  alert("倒數結束");
  clearTimeout(countdownid);
 }else{
  countdownnumber--;
  if(countdownid){
   clearTimeout(countdownid);
  }
  countdownid=setTimeout(countdownfunc,1000);
 }
}