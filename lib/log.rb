class Log

  def self.debugs(prefix, object)
    self.debug(prefix, object)
    object.each do |item|
      self.debug("  #{prefix}", item)
    end
  end

  def self.debug(prefix, object)
    if nil == object
      Rails.logger.debug "#{prefix} , (nil)"
    else
      Rails.logger.debug "#{prefix} , #{object.to_s}"
    end
  end
end
