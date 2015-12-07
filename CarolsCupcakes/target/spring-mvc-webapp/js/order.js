/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready();

$('#addCherry').click(function (event) {
    alert("DING!");
    event.preventDefault();
        var addCherry = document.getElementById("shoppingCart");
        cherryCost = cherryPrice * $('#cherryToCart').val();
        addCherry.appendChild(document.createTextNode("Cherry: " + $('#cherryToCart').val() + "  $"));
        addCherry.appendChild(document.createTextNode(cherryCost.toFixed(2)));


});

