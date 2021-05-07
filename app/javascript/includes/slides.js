$(function(){
    var $activeSlide = $('#slides .slide:first-child');

    // $activeSlide.addClass("showing");

    $("#decline").on("click",function(){
        getToSlide('decline');
    })

    $("#approve").on("click",function(){
        getToSlide('approve');
    })

    function previousSlide(){
         getToSlide();
    }

    function getToSlide(action){
        $activeSlide.removeClass("showing");
        $activeSlide = $activeSlide.next(".slide")

        //send data to controller
        if(action == "approve"){

        }
        else{

        }

        $activeSlide.addClass("showing");

      
    }
})