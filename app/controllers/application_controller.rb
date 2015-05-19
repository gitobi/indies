class ApplicationController < ActionController::Base
  include Jwtable
  include Accountable

  Jbuilder.key_format camelize: :lower
  before_action :set_locale
  before_action :parse_jwt
  before_action :check_account
  before_action :view_versioning

  private

  def set_locale
    # I18n.locale = http_accept_language.language_region_compatible_from(I18n.available_locales)
  end

  def check_account
    set_logedin_infos
  end

  def parse_jwt
    # set_application_id
    # BaseModel.set_application_id(@application_id)
  end

  def view_versioning
    @view_version = "v1"
  end

  def bad_request
    render json: { error: "Bad Request" }, status: :bad_request
  end

  def conflict_duplication_post_request
    render json: { error: "Conflict (duplication post request)" }, status: :conflict
  end

  def record_not_found
    render json: { error: "Not found" }, status: :not_found
  end

  def unauthorized
    render json: { error: "Unauthorized" }, status: :unauthorized
  end

  def need_registering
    render json: { error: "Need service registering" }, status: :unauthorized
  end

end
