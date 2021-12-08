// hide if building is not selected
$(function() {
    $('#button').hide(); 
    $('#building').change(function(){
        console.log("test:",$('#building :selected').text())
        if($('#building :selected').text() == "SELECT") {
            $('#button').hide(); 
        } else {
            $('#button').show();
        } 
    });
});

//reset when customer change
$(function() {
    $('#button').hide(); 
    $('#customer').change(function(){
        $('#button').hide();
    });
    
});

function alertbox() {
    
    // if (document.getElementById('report') != "") {
    //     alert("Intervention successfully save");
    // }
    
}