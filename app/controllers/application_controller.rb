class ApplicationController < ActionController::Base

  def show_checklist
    render({ :template => "application/checklist.html.erb"})
  end
end
