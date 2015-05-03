require 'singleton'

# ex.
#  SingletonHash.instance.hash[:attr] = 'value'
#  p SingletonHash.instance.hash[:attr] => 'value'
#
# bad. not thread safe
#  num = SingletonHash.instance.h[:count_a]
#  num = num + 1
#  SingletonHash.instance.h[:count_a] = num
#
# ok. thread safe
#  SingletonHash.instance.h[:count_b] = SingletonHash.instance.h[:count_b] + 1

class SingletonHash
  include Singleton
  attr_accessor :hash
  def initialize
    @hash = {}
  end
end
