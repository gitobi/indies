module ApplicationHelper
  def view_version
    "#{@view_version}"
  end
  def partial_view_directory
    "#{view_version}/share/"
  end

  def share_render(partial, locals)
    render partial: "#{partial_view_directory}#{partial}", locals: locals
  end
end
