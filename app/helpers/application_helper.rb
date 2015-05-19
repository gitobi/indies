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

  def logedin?
    nil != @logedin_account_id
  end

  def current_user?(user=nil)
    unless logedin?
      return false
    end

    user_id = nil != user ? user.id : @user.id
    user_id == @logedin_user.id
  end

  def contains_current_user?(container)
    container.users.each do |user|
      if current_user?(user)
        return true
      end
    end
    return false
  end

end
