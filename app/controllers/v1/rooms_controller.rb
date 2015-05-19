class V1::RoomsController < V1::BaseController

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

end
