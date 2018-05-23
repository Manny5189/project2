function outputUpdateRating(num) {
    document.querySelector('#outputRating').value = num;
    }

function outputUpdateDuration(num) {
    document.querySelector('#outputDuration').value = num;
    }

$(document).ready(function(){
        $( "a.theCriteria" ).click(function( event ) {
            event.preventDefault();
            $("html, body").animate({ scrollTop: $($(this).attr("href")).offset().top }, 900);
        });
    });