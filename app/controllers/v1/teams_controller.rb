class V1::TeamsController < V1::BaseController

  def new
    model_instance = new_model
    model_instance.users << @logedin_user
    common_new(model_instance)
  end

  def create
    result, model_instance = create_model(params)
    model_instance.users << @logedin_user
    model_instance.save
    redirect_to action: 'show', id: model_instance.id

  end



  def show

    model_instance = get_model({id: params[:id]})
    unless contains_current_user?(@team)
      super
      return
    end

    @team = Team.preload(:users).find(params[:id])
    @timeline = Timeline.new
    @timeline.add_team(@team)

    @new_message = TeamMessage.new
    @new_message.user = @logedin_user
    @new_message.team = @team

    common_show model_instance
  end


end
