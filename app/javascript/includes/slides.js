$(function(){
    var $activeSlide = $('#slides .slide:first-child');


    $(".match-tile").on("click",function(){
        var account_id = $(this).data("id");

        $.ajax({
            url: "/get/conversation/"+account_id,
            method: "post",
            dataType: "script"
        })

        // $("#conversation").show();
    })

    

    $("#decline").on("click",function(){
        getToSlide('decline');
    })

    $("#approve").on("click",function(){
        var user_id = $activeSlide.data("id")
        console.log(user_id)
        $.ajax({
            url: "/approve/" + user_id,
            method: "post",
            datatype: "ajax"
        })
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