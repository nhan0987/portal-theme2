/*$(window).load(function() {
	$("img").each(function() {
		var a = $(this);
		if (a.context.naturalWidth == 0 || a.readyState == "uninitialized") {
			$(a).unbind("error").attr("src", themeDisplay.getPathThemeImages() + "/custom/noimage.jpg")
		}
	})
});*/

AUI().ready(
	function(A){
		var currentDateTime = setInterval("getCurrentDateTime()", 1000);
	}
);

function getCurrentDateTime(){

	var day_of_week = new Array();
	day_of_week[0] = "Chủ nhật";
	day_of_week[1] = "Thứ hai";
	day_of_week[2] = "Thứ ba";
	day_of_week[3] = "Thứ tư";
	day_of_week[4] = "Thứ năm";
	day_of_week[5] = "‎Thứ sáu";
	day_of_week[6] = "Thứ bảy";
	
	var month_of_year = new Array();
	month_of_year[0] = "01";
	month_of_year[1] = "02";
	month_of_year[2] = "03";
	month_of_year[3] = "04";
	month_of_year[4] = "05";
	month_of_year[5] = "06";
	month_of_year[6] = "07";
	month_of_year[7] = "08";
	month_of_year[8] = "09";
	month_of_year[9] = "10";
	month_of_year[10] = "11";
	month_of_year[11] = "12";
	
	var now = new Date();   
	var currentYear= now.getYear();     
	var currentMonth = now.getMonth();  
	var currentDate = now.getDate();   
	var currentDay = now.getDay();
	var currentHour = now.getHours();
	var currentMinute = now.getMinutes();
	var currentSecond = now.getSeconds();
	
	if (currentYear < 1000) {
		currentYear = 1900  + currentYear;
	}
	
	if (currentDate < 10) {
		currentDate = "0" + currentDate;
	}  
			
	if (currentHour < 10) {
		currentHour = "0" + currentHour;
	} 
			
	if (currentMinute < 10) {
		currentMinute = "0" + currentMinute;
	} 
			
	if (currentSecond < 10) {
		currentSecond = "0" + currentSecond;
	} 
	
	var currentDateValue = day_of_week[currentDay] + ",  " + currentDate + "/" + month_of_year[currentMonth] + "/" + currentYear + " | " ;
	var currentTimeValue = currentHour + ":" + currentMinute + ":" + currentSecond;
	
	var currentDateWrapper = document.getElementById("current_date");
	var currentTimeWrapper = document.getElementById("current_time");
	
	if(currentDateWrapper){
		currentDateWrapper.innerHTML = currentDateValue;
	}
	
	if(currentTimeWrapper){
		currentTimeWrapper.innerHTML = currentTimeValue;
	}
}

$(document).ready(function() {
	var offset = 100;
	var duration = 500;
	
	$(window).scroll(function() {
		if ($(this).scrollTop() > offset) {
			$('#backToTop').fadeIn(duration);
		} else {
			$('#backToTop').fadeOut(duration);
		}
	});
	
	$('#backToTop').click(function(event) {
		event.preventDefault();
		$('html, body').animate({scrollTop: 0}, duration);
		return false;
	})
});


$( "#banner nav.navbar a.btn-navbar" ).click(function() {     
	$('#banner .nav-collapse.collapse').slideToggle();
});

/* Search */

Liferay.provide(
	window, 
	'doSearch',
	function(){
		var A = AUI();
		var searchInput = A.one("#searchInput");
		
		if(searchInput) {
			var keywords = searchInput.val();
			keywords = keywords.replace(/^\s+|\s+$/,"");
			
			if(keywords !== "") {
				var url = '/web/quan-dong-da/tim-kiem/-/search/' + keywords;
				
				window.location.href = url;
			};
		}
	}, 
	['aui-base']
);
