module Namable
  extend ActiveSupport::Concern
  included do
    
    

    # モデルクラスをセット
    def self.model_class
      model_name.to_s.constantize
    end
    
    def model_class
      self.class
    end
    
    # FooBar #=> 'FooBar'
    def self.model_to_s
      model_class.to_s
    end

    # FooBar #=> foo_bars
    def self.model_to_s_underscores
      model_to_s.tableize
    end

    # FooBar #=> foo_bar
    def self.model_to_s_underscore
      model_to_s.underscore
    end

    # モデルのカラムを [:col1,:col2, ...] のように シンボルの配列で返却する
    def self.column_symbols
      return *model_class.column_names.map(&:intern)
    end


  end
end