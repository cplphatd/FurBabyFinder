/**
 * Created by melodytempleton on 7/7/17.
 */
$("#searchIndividual").click(function(){
    var petID = $("#petID").val();
    var petName = $("#petName").val();
     if ((petName != "") & (petID != "")) {
        $('#warningMessage').css("display", "inline-block");
    }
    else if (petID != "") {
         if(!($.isNumeric(petID))){
             $('#warningMessageNumeric').css("display", "inline-block");
             return;
         }

        window.location.href =  "/pets/searchID/" + petID;
         $('#warningMessage').css("display", "none");
     }
    else if (petName != "") {
        window.location.href =  "/pets/searchName/" + petName;
         $('#warningMessage').css("display", "none");
    }

     else {
         window.location.href = "/pets/searchAllPets";
         hideWarnings();
     }
});

