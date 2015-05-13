module Crudable
  extend ActiveSupport::Concern
  include Namable

  included do

    def self.common_find_by_id(id)
      find_by(id: id)
    end

    # where(args) を返却する
    def self.common_where(args={})
      where(model_class.extent_where_statements(args))
    end

    # find_by(args) を返却する
    def self.common_find_by(args={})
      find_by(model_class.extent_where_statements(args))
    end

    def self.common_new
      model_class.new
    end

    # new(args) を返却する
    # args より有効な値、および、extent_setup_columns がセットされる
    def self.common_create(args)
      instance = model_class.new(model_class.filter_model_params(args))
      model_class.extent_setup_columns(instance)
      return instance
    end

    # update_attributes(args) を返却する
    # args より有効な値がセットされる
    def common_update(args)
      update_attributes(model_class.filter_model_params(args))
    end

    # destroy を返却する
    def common_destroy
      destroy
    end

    # argsから、モデルに存在するカラムのみを抽出して返却する
    def self.filter_model_params(args)
      args.require(model_class.model_to_s_underscore.intern).permit(model_class.column_symbols)
    end

    # where句に以下を含める
    #  application_id
    def self.extent_where_statements(where_statements={})
      cloned = where_statements.clone
      # cloned[:application_id] = get_application_id
      cloned
    end

    # モデルに、以下のカラムが存在した場合は、値をセットする
    #  application_id
    def self.extent_setup_columns(instance)
      # instance.application_id = get_application_id if instance.respond_to?("application_id")
    end

  end
end
