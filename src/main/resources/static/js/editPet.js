/**
 * Created by melodytempleton on 7/7/17.
 */
$(document).ready(function(){

    var imageCount = $('#imageCount').val();
    var addImages = 6 - imageCount;

    var imageInput = document.getElementById("imageInput").innerHTML;

    // ============================insert html to upload additional images=============================
    (function insertImageInputs() {
        var insertImages;
        for (var j = 0; j < addImages; j++){
            insertImages = insertImages + imageInput;
        }
        document.getElementById("additionalImages").innerHTML = insertImages;
    })();

    function updateIds (classname, idbase){
        var number = 1;
        var id;

        $(classname).each(function () {
            id = idbase + number;
            $(this).attr("id", id);
            number++;
        })
    }

    updateIds('.hiddenChecks', 'hiddenCheck');
    updateIds('.hiddenChecksAdopt', 'hiddenCheckAdopt');
    updateIds('.imageInputs', 'image');
    updateIds('.profilePic', 'profilePic');
    updateIds('.afterAdopt', 'afterAdopt');

// ======================================check checkboxes for existing images if profile or after adoption ============
    (function checkTheProfile() {

      $('.profilePic').each(function(){
           var trueOrNot = $(this).val();
          if(trueOrNot == "true"){
              $(this).attr('checked', true);
          }
      })

    })();

    (function checkAfterAdopt() {

        $('.afterAdopt').each(function(){
            var trueOrNot = $(this).val();
            if(trueOrNot == "true"){
                $(this).attr('checked', true);
            }
        })

    })();



// ==========Only one profile pic gets checked === Set Values for profile checks and Adopt Checks======================

    $('.profilePic').click(function(){
        var $inputs = $('.profilePic');
        if($(this).is(':checked')){
            $('.profilePic').prop('checked', false); // uncheck them all so existing images are unchecked
            $(this).prop('checked', true); // recheck the one that just got checked
            var thatID = $(this).attr('id');
            thatID = thatID.substr(-1);
            var newID = "#hiddenCheck" + thatID; // get the id of the hidden fields
            $('.hiddenChecks').val("false"); // make sure everything if false (so just the newly checked is true
            $(newID).val("true"); // newly checked is now true
            $inputs.not(this).prop('disabled',true);  // all other checks for profile pic are disabled until this one is unchecked
        }else{
            $inputs.prop('disabled',false); // if unchecking, make other checkboxes availble again to b selected
            $('.hiddenChecks').val("false");
        }
    });


    $('.afterAdopt').click(function(){
        var $inputs = $('.afterAdopt');
        if($(this).is(':checked')){
            var thatID = $(this).attr('id');
            thatID = thatID.substr(-1);
            var newID = "#hiddenCheckAdopt" + thatID;
            $(newID).val("true");
        }
        else if($(this).not(':checked')) {
            var thatID = $(this).attr('id');
            thatID = thatID.substr(-1);
            var newID = "#hiddenCheckAdopt" + thatID;
            $(newID).val("false");
        }
    });


    // ===========check which filters the pet already has and check them ====================

    function checkFiltersPetHas (filterName){
        var hiddenID = "#petHas" + filterName;
        var checkID = "#" + filterName;
        if(($(hiddenID).val()) == "true"){
            $(checkID).prop('checked', true);
        }

    }

    checkFiltersPetHas("male");
    checkFiltersPetHas("female");
    checkFiltersPetHas("cat_friendly");
    checkFiltersPetHas("not_cat_friendly");
    checkFiltersPetHas("neuterd_spayed");
    checkFiltersPetHas("potty_trained");
    checkFiltersPetHas("crate_trained");
    checkFiltersPetHas("great_with_dogs");
    checkFiltersPetHas("great_with_kids");
    checkFiltersPetHas("not_dog_friendly");
    checkFiltersPetHas("medical_foster");
    checkFiltersPetHas("microchipped");



});
