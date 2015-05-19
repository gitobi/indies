class V1::TeamMessagesController < V1::BaseController

  def new
    model_instance = new_model
    model_instance.users << @logedin_user
    common_new(model_instance)
  end

  def create
    result, model_instance = create_model(params)
    model_instance.save
    redirect_to controller: 'teams', action: 'show', id: model_instance.team.id

  end

end
