class Team < BaseModel

  default_scope { includes(:messages).order('updated_at DESC') }

  has_many :relation_team_users
  has_many :team_messages

  has_many :messages, class_name: 'TeamMessage'
  has_many :users,    :through => :relation_team_users

end
