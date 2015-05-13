module Accountable
  extend ActiveSupport::Concern
  included do

    attr_reader :logedin
    attr_reader :account
    attr_reader :user
    attr_reader :user_id

    private

    def set_account
      user_id = session[:user_id]
      if user_id.blank?

      else
        @user = User.common_find_by_id(user_id)
      end
    end

    def check_account
      check_account
      @jwt = request.headers[:Authorization]
      if @jwt.blank?
        # FIXME unauthorized を呼び出す。
        # unauthorized
        @application_id = DEBUG_APPLICATION_ID
      else
        # TODO JWT から application_id を取得
        @application_id = @jwt
      end
    end

  end
end

