class V1::ProjectUsersController < V1::BaseController

  def new
    model_instance = new_model
    model_instance.users << @logedin_user
    common_new(model_instance)
  end

  def create
    result, model_instance = create_model(params)
    model_instance.save
    redirect_to controller: 'projects', action: 'show', id: model_instance.project.id

  end

end
