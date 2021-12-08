jQuery ->
    $('#interventions_elevator_id').parent().hide()
    elevator = $('#interventions_elevator_id').html()
    $('#interventions_column_id').change ->
         
        column = $('#interventions_column_id :selected').text()
        optionselevator = $(elevator).filter("optgroup[label='#{column}']").html()
        if optionselevator
            $('#interventions_elevator_id').html("<option value=''>NONE</option>" + optionselevator)
            $('#interventions_elevator_id').parent().show()
        else 
            $('#interventions_elevator_id').empty() 
            $('#interventions_elevator_id').parent().hide()