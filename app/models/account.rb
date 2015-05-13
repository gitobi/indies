class Account < BaseModel
  has_one :user

  # TODO
  def self.authenticate(email, password)
    Account.common_find_by({email: email})
  end
end
