module Jwtable
  extend ActiveSupport::Concern
  included do

    attr_reader :application_id
    attr_reader :user_id
    attr_reader :publisher
    attr_reader :debug_application_id

    DEBUG_APPLICATION_ID = "11111111-1111-1111-1111-111111111111"

    private

    # FIXME HttpHeader の JWT から application_id を取得するように修正要
    # とりあえず、JWT が存在すれば、それ自体を application_id として使用する
    # UUIDの形式がおかしいと、whereで例外が発生してしまうため、形式チェックも必要かもしれない
    def set_application_id
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

