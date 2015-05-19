class V1::ProjectsController < V1::BaseController

  def show

    model_instance = get_model({id: params[:id]})
    unless contains_current_user?(@project)
      super
      return
    end

    @project = Project.preload(:users).find(params[:id])
    @timeline = Timeline.new
    @timeline.add_project(@project)

    @new_message = ProjectMessage.new
    @new_message.user = @logedin_user
    @new_message.project = @project

    common_show model_instance
  end

end
