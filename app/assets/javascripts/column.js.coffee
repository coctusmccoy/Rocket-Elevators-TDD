jQuery ->
    $('#interventions_column_id').parent().hide()
    column = $('#interventions_column_id').html()
    $('#interventions_battery_id').change ->
         
        battery = $('#interventions_battery_id :selected').text()
        optionscolumn = $(column).filter("optgroup[label='#{battery}']").html()
        if optionscolumn
            $('#interventions_column_id').html("<option value=''>NONE</option>" + optionscolumn)
            $('#interventions_column_id').parent().show()
            $('#interventions_elevator_id').parent().hide()

        else 
            $('#interventions_column_id').empty() 
            $('#interventions_column_id').parent().hide()
            $('#interventions_elevator_id').parent().hide()