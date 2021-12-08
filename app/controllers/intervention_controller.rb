class InterventionController < ApplicationController

    before_action :authenticate_user!
    before_action :check_admin
  
  def new
    @intervention = Intervention.new
  end

  def show
    @intervention = Intervention.new
  end
  
  def create 
    puts "test"
    @intervention = Intervention.new(intervention_params)

    ZendeskAPI::Ticket.create!($client, :subject => @intervention.customer_id, :requester => { :name => @intervention.customer_id, :email => "juliendarac@gmail.com" },:type => "Question", :comment => { :body => "Subject: Intervention Needed
      requester: #{current_user.email}
      description: #{@intervention.report}
      customer: #{@intervention.customer_id}
      building ID: #{@intervention.building_id}
      battery ID: #{@intervention.battery_id}
      #{if @intervention.column_id
        "column ID: #{@intervention.column_id}"
      else
      end
      }
      #{if @intervention.elevator_id
      "elevator ID: #{@intervention.elevator_id}"
      else
      end
      }
      #{if @intervention.employee_id
      "employee ID assinged : #{@intervention.employee_id}"
      else
      end
      }
      " }, :priority => "urgent")
    @intervention.save
    redirect_to "#home"   

end

def intervention_params
  params.require(:interventions).permit(:author, :result, :report, :status, :start, :end, :customer_id, :building_id, :battery_id, :column_id, :elevator_id)
end

def check_admin
  redirect_to root_path unless current_user.admin? || current_user.employee?
end


end