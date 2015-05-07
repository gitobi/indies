class V1::TeamsController < V1::BaseController

  def show_by_major_and_minor
    model_instance = get_model(:major => params[:major], :minor => params[:minor])
    common_show model_instance
  end

  def show_by_major_and_minor_within_kanban
    @within_kanban = true
    model_instance = get_model(:major => params[:major], :minor => params[:minor])
    common_show model_instance
  end

end
