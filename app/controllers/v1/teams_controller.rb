class V1::TeamsController < V1::BaseController

  def new
      model_instance = new_model
    model_instance.users << user
      common_new(model_instance)
  end

  def create
    result, model_instance = create_model(params)
    model_instance.users << user
    model_instance.save
    redirect_to action: 'show', id: model_instance.id

  end

end
