<%-- 
    Document   : index
    Created on : Oct 3, 2013, 2:23:20 PM
    Author     : robertmetcalfe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page ... "You say Tic Tac Toe ... I say Noughts and Crosses"</title>
<script>


var v11=0;
var v12=0;
var v13=0;
var v21=0;
var v22=0;
var v23=0;
var v31=0;
var v32=0;
var v33=0;
var cscore=0;
var dscore=0;
var yscore=0;

function newgame() {
 v11=0;
 v12=0;
 v13=0;
 v21=0;
 v22=0;
 v23=0;
 v31=0;
 v32=0;
 v33=0;
 var huh;
 huh = document.getElementById("11");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
 huh = document.getElementById("12");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
 huh = document.getElementById("13");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
 huh = document.getElementById("21");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
 huh = document.getElementById("22");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
 huh = document.getElementById("23");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
 huh = document.getElementById("31");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
 huh = document.getElementById("32");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
 huh = document.getElementById("33");
 huh.src = "http://www.rjmprogramming.com.au/wordpress/ttnone.png";
}

function doit(imgo) {
  var wi = 0;
  var nxt;
  var suffix = imgo.id;
  imgo.src = "http://www.rjmprogramming.com.au/wordpress/ttcross.png";
switch(suffix)
{
case '11':
  v11 = 1;
  if (eval(v11 + v12 + v13) == 3 || eval(v11 + v21 + v31) == 3 || eval(v11 + v22 + v33) == 3) wi = 1;
  break;
case '12':
  v12 = 1;
  if (eval(v11 + v12 + v13) == 3 || eval(v12 + v22 + v32) == 3) wi = 1;
  break;
case '13':
  v13 = 1;
  if (eval(v11 + v12 + v13) == 3 || eval(v13 + v23 + v33) == 3 || eval(v13 + v22 + v31) == 3) wi = 1;
  break;
case '21':
  v21 = 1;
  if (eval(v21 + v22 + v23) == 3 || eval(v11 + v21 + v31) == 3) wi = 1;
  break;
case '22':
  v22 = 1;
  if (eval(v21 + v22 + v23) == 3 || eval(v12 + v22 + v32) == 3 || eval(v11 + v22 + v33) == 3 || eval(v13 + v22 + v31) == 3) wi = 1;
  break;
case '23':
  v23 = 1;
  if (eval(v21 + v22 + v23) == 3 || eval(v13 + v23 + v33) == 3) wi = 1;
  break;
case '31':
  v31 = 1;
  if (eval(v31 + v32 + v33) == 3 || eval(v13 + v22 + v31) == 3 || eval(v11 + v21 + v31) == 3) wi = 1;
  break;
case '32':
  v32 = 1;
  if (eval(v31 + v32 + v33) == 3 || eval(v12 + v22 + v32) == 3) wi = 1;
  break;
case '33':
  v33 = 1;
  if (eval(v31 + v32 + v33) == 3 || eval(v13 + v23 + v33) == 3 || eval(v11 + v22 + v33) == 3) wi = 1;
  break;

default:
  break;
}

if (wi == 1) {
   yscore = yscore + 1;
   alert("Congratulations!   You win.  Scores: Computer " + cscore + " vs You " + yscore + " (" + dscore + " draws)");
   newgame();

} else if (wi == 0) {
 if (v22 == 0 && (eval(v21 + v22 + v23) == -2 || eval(v12 + v22 + v32) == -2 || eval(v11 + v22 + v33) == -2 || eval(v13 + v22 + v31) == -2)) {
   v22 = -1;
   wi = -1;
   nxt = document.getElementById('22');
 } else if (v11 == 0 && (eval(v11 + v12 + v13) == -2 || eval(v11 + v21 + v31) == -2 || eval(v11 + v22 + v33) == -2)) {
   v11 = -1;
   wi = -1;
   nxt = document.getElementById('11');
 } else if (v13 == 0 && (eval(v11 + v12 + v13) == -2 || eval(v13 + v23 + v33) == -2 || eval(v13 + v22 + v31) == -2)) {
   v13 = -1;
   wi = -1;
   nxt = document.getElementById('13');
 } else if (v31 == 0 && (eval(v31 + v32 + v33) == -2 || eval(v13 + v22 + v31) == -2 || eval(v11 + v21 + v31) == -2)) {
   v31 = -1;
   wi = -1;
   nxt = document.getElementById('31');
 } else if (v33 == 0 && (eval(v31 + v32 + v33) == -2 || eval(v13 + v23 + v33) == -2 || eval(v11 + v22 + v33) == -2)) {
   v33 = -1;
   wi = -1;
   nxt = document.getElementById('33');
   
   
 } else if (v12 == 0 && (eval(v11 + v12 + v13) == -2 || eval(v12 + v22 + v32) == -2)) {
   v12 = -1;
   wi = -1;   
   nxt = document.getElementById('12');
 } else if (v21 == 0 && (eval(v21 + v22 + v23) == -2 || eval(v11 + v21 + v31) == -2)) {
   v21 = -1;
   wi = -1;
   nxt = document.getElementById('21');
 } else if (v23 == 0 && (eval(v21 + v22 + v23) == -2 || eval(v13 + v23 + v33) == -2)) {
   v23 = -1;
   wi = -1;
   nxt = document.getElementById('23');
 } else if (v32 == 0 && (eval(v31 + v32 + v33) == -2 || eval(v12 + v22 + v32) == -2)) {
   v32 = -1;
   wi = -1;
   nxt = document.getElementById('32');
 }  
 if (wi != 0) { 
   nxt.src = "http://www.rjmprogramming.com.au/wordpress/ttcircle.png";
   cscore = cscore + 1;
   alert("Computer wins!   Bad luck.  Scores: Computer " + cscore + " vs You " + yscore + " (" + dscore + " draws)");
   newgame();
 } 
 if (wi == 0) {
    if (v22 == 0 && (eval(v21 + v22 + v23) == 2 || eval(v12 + v22 + v32) == 2 || eval(v11 + v22 + v33) == 2 || eval(v13 + v22 + v31) == 2)) {
   v22 = -1;
   nxt = document.getElementById('22');
 } else if (v11 == 0 && (eval(v11 + v12 + v13) == 2 || eval(v11 + v21 + v31) == 2 || eval(v11 + v22 + v33) == 2)) {
   v11 = -1;
   nxt = document.getElementById('11');
 } else if (v13 == 0 && (eval(v11 + v12 + v13) == 2 || eval(v13 + v23 + v33) == 2 || eval(v13 + v22 + v31) == 2)) {
   v13 = -1;
   nxt = document.getElementById('13');
 } else if (v31 == 0 && (eval(v31 + v32 + v33) == 2 || eval(v13 + v22 + v31) == 2 || eval(v11 + v21 + v31) == 2)) {
   v31 = -1;
   nxt = document.getElementById('31');
 } else if (v33 == 0 && (eval(v31 + v32 + v33) == 2 || eval(v13 + v23 + v33) == 2 || eval(v11 + v22 + v33) == 2)) {
   v33 = -1;
   nxt = document.getElementById('33');
   
   
 } else if (v12 == 0 && (eval(v11 + v12 + v13) == 2 || eval(v12 + v22 + v32) == 2)) {
   v12 = -1;
   nxt = document.getElementById('12');
 } else if (v21 == 0 && (eval(v21 + v22 + v23) == 2 || eval(v11 + v21 + v31) == 2)) {
   v21 = -1;
   nxt = document.getElementById('21');
 } else if (v23 == 0 && (eval(v21 + v22 + v23) == 2 || eval(v13 + v23 + v33) == 2)) {
   v23 = -1;
   nxt = document.getElementById('23');
 } else if (v32 == 0 && (eval(v31 + v32 + v33) == 2 || eval(v12 + v22 + v32) == 2)) {
   v32 = -1;
   nxt = document.getElementById('32');
 } else if (v22 == 0) {
     v22 = -1;
   nxt = document.getElementById('22');
   } else if (v11 == 0) {
     v11 = -1;
   nxt = document.getElementById('11');
   } else if (v13 == 0) {
     v13 = -1;
   nxt = document.getElementById('13');
   } else if (v31 == 0) {
     v31 = -1;
   nxt = document.getElementById('31');
   } else if (v33 == 0) {
     v33 = -1;
   nxt = document.getElementById('33');
   } else if (v12 == 0) {
     v12 = -1;
   nxt = document.getElementById('12');
   } else if (v21 == 0) {
     v21 = -1;
   nxt = document.getElementById('21');
   } else if (v23 == 0) {
     v23 = -1;
   nxt = document.getElementById('23');
   } else if (v32 == 0) {
     v32 = -1;
   nxt = document.getElementById('32');
   } else {
   dscore = dscore + 1;
   alert("It is a draw.   Well played.  Scores: Computer " + cscore + " vs You " + yscore + " (" + dscore + " draws)");
   newgame();
   }
   nxt.src = "http://www.rjmprogramming.com.au/wordpress/ttcircle.png";
 }
}

}



</script>
    </head>
    <body>
        <h1>You say Tic Tac Toe ... I say Noughts and Crosses</h1>
<% String sis="";  %>
<% Date d = new Date(); %>
<% long dl = d.getTime(); %>
<p>It's <%= d.toString() %> ... yay ... and enjoy the random Triangle Stars below!</p><br>
<%  //Scanner in = new Scanner(System.in); %>
<%  //System.out.print("Enter Number of Characters of Triangle on Bottom Row (greater than 2): "); %>


<%  String[] colours = {"Aqua","Black","Blue","Fuchsia","Gray","Green","Lime","Maroon","Navy","Olive","Purple","Red","Silver","Teal", "Yellow"}; %>
<%  String[] colourb = {"Aqua","Black","Blue","Fuchsia","Gray","Green","Maroon","Lime","Navy","Olive","Purple","Red","Silver","Teal", "Yellow"}; %>
<%  long n = (dl % 10) + 1; %>
<%  int nc = (int)(dl % 15); %>
<%  String cnc = colours[nc]; %>
<%  String bcnc = colourb[14 - nc]; %>
<%  n = (n + 1) / 2;  %>
<%  //System.out.print("Enter A Character: "); %>
<%  String s = "*"; //in.next(); %>
<table><tr><td style='background-color:<%= bcnc %>'>
<% for (int ii = 0; ii <= n; ii++) { %>
<% sis = "<p style='color:" + cnc + "'>"; %>
<% for (int j=0; j < n - ii; j++) { %>
<% sis = sis + "&nbsp;"; %>
<% } %>
<% for (int jjj=0; jjj < (2 * ii - 1); jjj++) { %>
<% sis = sis + s; %>
<% } %>
<p><%= sis %></p><br>
<% } %>
<a href="./index.jsp" title="index.jsp">New triangle?</a>
                </td><td style='background-color:gray;'>
    <table title='Click a box to make your move in Noughts and Crosses game against Computer' ondblclick='window.open("http://www.rjmprogramming.com.au/Games/Noughtsandcrosses/","_blank");'>
<tbody style="background-color:pink;">
<tr>
<td style="border-right: 2px solid red;border-bottom: 2px solid red;" id="t11"><img id="11" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
<td style="border-bottom: 2px solid red;" id="t12"><img id="12" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
<td style="border-left: 2px solid red;border-bottom: 2px solid red;" id="t13"><img id="13" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
</tr>
<tr>
<td style="border-right: 2px solid red;" id="t21"><img id="21" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
<td id="t22"><img id="22" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
<td style="border-left: 2px solid red;" id="t23"><img id="23" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
</tr>
<tr>
<td style="border-right: 2px solid red;border-top: 2px solid red;" id="t31"><img id="31" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
<td style="border-top: 2px solid red;" id="t32"><img id="32" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
<td style="border-left: 2px solid red;border-top: 2px solid red;" id="t33"><img id="33" src="http://www.rjmprogramming.com.au/wordpress/ttnone.png" onclick="doit(this);" /></td>
</tr>
</tbody>
</table>
<a href="#post-454" title="Coward's way out?" onclick="newgame();">New game</a>

</td><td><iframe style='width:500px;height:700px;' src='http://www.rjmprogramming.com.au/Games/Nimh/?isMobile=n'></iframe</td></tr></table>

</body>
</html>
