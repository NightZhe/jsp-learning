/**
 * 
 */
$(function () {
    var element = document.getElementById("bmtp");
    var blackprice = Number(element.attributes['value'].value);
    $("#bmtp").html(blackprice)

    var tpic = document.getElementById("tpc");
    var tpicprice = Number(tpic.attributes['value'].value);
    var total = (blackprice + tpicprice);
    console.log(total);
    $("#total").html("總計： " + total)

})



// 就是現取直用 window.loaction.assign("http://www.google.com") 把他傳去你想去的頁面 ""
//myurl=你要倒的頁面跟你想帶的參數
//https://www.w3schools.com/jsref/met_loc_assign.asp
function postvalue(){
    var element = document.getElementById("bmtp");
    var blackprice = Number(element.attributes['value'].value);
    $("#bmtp").html(blackprice)

    var tpic = document.getElementById("tpc");
    var tpicprice = Number(tpic.attributes['value'].value);
    var total = (blackprice + tpicprice);
    console.log(total);
    console.log(tpicprice);
    console.log(blackprice);
    $("#total").html("總計： " + total)
    
    var myurl = "./car.jsp"+"?"+"b1="+blackprice+"&t1="+tpicprice;
    console.log(myurl)
    location.assign(myurl);
}


