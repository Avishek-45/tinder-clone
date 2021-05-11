$(function(){
    var $activeSlide = $('#slides .slide:first-child');


    $(".match-tile").on("click",function(){
        var account_id = $(this).data("id");

        $.ajax({
            url: "/get/conversation/"+account_id,
            method: "post",
            dataType: "script"
        })

    })
    $(".open-conversation").on("click",function(){
        var account_id = $(this).data("id");

        $.ajax({
            url: "/get/conversation/"+account_id,
            method: "post",
            dataType: "script"
        })

    })

    

    $("#decline").on("click",function(){
        var user_id = $activeSlide.data("id")

        $.ajax({
            url: "/decline/" + user_id,
            method: "post",
            datatype: "ajax"
        })
        getToSlide('decline');
    })

    $("#approve").on("click",function(){
        var user_id = $activeSlide.data("id")

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