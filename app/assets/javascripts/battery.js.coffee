jQuery ->
    $('#interventions_battery_id').parent().hide()
    battery = $('#interventions_battery_id').html()
    $('#interventions_building_id').change ->
         
        building = $('#interventions_building_id :selected').text()
        optionsbattery = $(battery).filter("optgroup[label='#{building}']").html() 
        if optionsbattery
            $('#interventions_battery_id').html("<option value='test'>SELECT</option>" + optionsbattery)
            $('#interventions_battery_id').parent().show()
            $('#interventions_column_id').parent().hide()
            $('#interventions_elevator_id').parent().hide()
        else 
            $('#interventions_battery_id').empty()
            $('#interventions_battery_id').parent().hide()
            $('#interventions_column_id').parent().hide()   
            $('#interventions_elevator_id').parent().hide()      
                