$(document).ready(function () {

	var urlVars = function () {
		
			var urlData = $(location).attr('href');
	  		var urlParts = urlData.split('?');
			var urlPairs = urlParts[1].split('&');
			var urlValues = {};
			for (var pair in urlPairs){
				var keyValue = urlPairs[pair].split("=");
				var key = decodeURIComponent(keyValue[0]);
				var value = decodeURIComponent(keyValue[1]);
				urlValues[key] = value;
			}
			return urlValues;
	};

	$.couch.db("jesseasdi").view("comickeeper/courses", {
		success: function(data){
			var program = urlVars()["program"];
			//console.log(program);
			$.couch.db("jesseasdi").view("comicKeeper/courses",{
				key: "program" + program
			});
		}
	});	
 
 });





