class Account < BaseModel
  has_one :user

  # TODO
  def self.authenticate(provider, uid)
    Account.common_find_by({provider: provider, uid: uid})
  end
end
