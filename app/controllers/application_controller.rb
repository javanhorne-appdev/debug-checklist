class ApplicationController < ActionController::Base

  def show_checklist
    render({ :template => "application/checklist.html.erb"})
  end

  def update_color
    session.store(:color,params.fetch("color"))
    redirect_to ("/")
  end

  def update_checklist
    
  
    
    # if params.fetch("project")=="0"
      session.store(:project, params.fetch("project"))
    # end
    # if params.fetch("action1")=="0"
      session.store(:action1, params.fetch("action1"))
    # end
    # if params.fetch("tried")=="0"
      session.store(:tried, params.fetch("tried"))
    # end
    # if params.fetch("expecting")=="0"
      session.store(:expecting, params.fetch("expecting"))
    # end
    # if params.fetch("experiencing")=="0"
      session.store(:experiencing, params.fetch("experiencing"))
    # end
    redirect_to ("/")
  end

  def reset
    reset_session    
    redirect_to ("/")
  end

end
