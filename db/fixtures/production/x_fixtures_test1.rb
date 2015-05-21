Account.seed(
  {id: "11111111-1111-1111-1111-111111111111", provider: "gitobi", uid: "a", email: "test1@gmail.com", phone: "000-0000-0001"},
  {id: "11111111-1111-1111-1111-111111111112", provider: "gitobi", uid: "b", email: "test2@gmail.com", phone: "000-0000-0002"},
  {id: "11111111-1111-1111-1111-111111111113", provider: "gitobi", uid: "c", email: "test3@gmail.com", phone: "000-0000-0003"},
  {id: "11111111-1111-1111-1111-111111111114", provider: "gitobi", uid: "d", email: "test4@gmail.com", phone: "000-0000-0004"},
  {id: "11111111-1111-1111-1111-111111111115", provider: "gitobi", uid: "e", email: "test5@gmail.com", phone: "000-0000-0005"},
  {id: "11111111-1111-1111-1111-111111111116", provider: "gitobi", uid: "f", email: "test6@gmail.com", phone: "000-0000-0006"}
)
Authority.seed(
  {id: "11111111-1111-1111-1111-111111111111", name: "owner"},
  {id: "11111111-1111-1111-1111-111111111112", name: "manager"},
  {id: "11111111-1111-1111-1111-111111111113", name: "member"},
  {id: "11111111-1111-1111-1111-111111111114", name: "spectator"}
)
Role.seed(
  {id: "61111111-1111-1111-1111-111111111111", name: "プログラマー"},
  {id: "61111111-1111-1111-1111-111111111112", name: "イラストレーター"},
  {id: "61111111-1111-1111-1111-111111111113", name: "作曲"}
)
User.seed(
  {id: "11111111-1111-1111-1111-111111111111", scope: "public",  account_id: "11111111-1111-1111-1111-111111111111", name: "user_1", picture: "pict_1", comment: "comment_1", detail: "detail_1"},
  {id: "11111111-1111-1111-1111-111111111112", scope: "public",  account_id: "11111111-1111-1111-1111-111111111112", name: "user_2", picture: "pict_2", comment: "comment_2", detail: "detail_2"},
  {id: "11111111-1111-1111-1111-111111111113", scope: "private", account_id: "11111111-1111-1111-1111-111111111113", name: "user_3", picture: "pict_3", comment: "comment_3", detail: "detail_3"},
  {id: "11111111-1111-1111-1111-111111111114", scope: "public",  account_id: "11111111-1111-1111-1111-111111111114", name: "user_4", picture: "pict_4", comment: "comment_4", detail: "detail_4"},
  {id: "11111111-1111-1111-1111-111111111115", scope: "public",  account_id: "11111111-1111-1111-1111-111111111115", name: "user_5", picture: "pict_5", comment: "comment_5", detail: "detail_5"},
  {id: "11111111-1111-1111-1111-111111111116", scope: "public",  account_id: "11111111-1111-1111-1111-111111111116", name: "user_6", picture: "pict_6", comment: "comment_6", detail: "detail_6"}
)
Team.seed(
  {id: "31111111-1111-1111-1111-111111111111", scope: "public",  name: "team_1", picture: "pict_1", comment: "comment_1", detail: "detail_1"},
  {id: "31111111-1111-1111-1111-111111111112", scope: "public",  name: "team_2", picture: "pict_2", comment: "comment_2", detail: "detail_2"},
  {id: "31111111-1111-1111-1111-111111111113", scope: "private", name: "team_3", picture: "pict_3", comment: "comment_3", detail: "detail_3"}
)
Project.seed(
  {id: "41111111-1111-1111-1111-111111111111", scope: "public",  name: "project_1", picture: "pict_1", comment: "comment_1", detail: "detail_1"},
  {id: "41111111-1111-1111-1111-111111111112", scope: "public",  name: "project_2", picture: "pict_2", comment: "comment_2", detail: "detail_2"},
  {id: "41111111-1111-1111-1111-111111111113", scope: "private", name: "project_3", picture: "pict_3", comment: "comment_3", detail: "detail_3"}
)
UserRole.seed(
  {user_id: "11111111-1111-1111-1111-111111111111", role_id: "61111111-1111-1111-1111-111111111111"},
  {user_id: "11111111-1111-1111-1111-111111111112", role_id: "61111111-1111-1111-1111-111111111112"},
  {user_id: "11111111-1111-1111-1111-111111111113", role_id: "61111111-1111-1111-1111-111111111113"}
)
TeamUser.seed(
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111", authority_id: "11111111-1111-1111-1111-111111111111"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111112", authority_id: "11111111-1111-1111-1111-111111111112"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111113", authority_id: "11111111-1111-1111-1111-111111111113"}
)
ProjectUser.seed(
  {project_id: "41111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111", authority_id: "11111111-1111-1111-1111-111111111111"},
  {project_id: "41111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111114", authority_id: "11111111-1111-1111-1111-111111111112"},
  {project_id: "41111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111115", authority_id: "11111111-1111-1111-1111-111111111113"},
  {project_id: "41111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111116", authority_id: "11111111-1111-1111-1111-111111111113"}
)
TeamMessage.seed(
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111", scope: "public", text: "message_11"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111", scope: "public", text: "message_12"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111", scope: "public", text: "message_13"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111112", scope: "public", text: "message_14"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111113", scope: "public", text: "message_15"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111", scope: "public", text: "message_16"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111112", scope: "public", text: "message_17"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111113", scope: "public", text: "message_18"},
  {team_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111", scope: "public", text: "message_19"},
)
ProjectMessage.seed(
  {project_id: "41111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111", scope: "public", text: "message_20"},
  {project_id: "41111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111114", scope: "public", text: "message_21"},
  {project_id: "41111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111115", scope: "public", text: "message_22"},
  {project_id: "41111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111116", scope: "public", text: "message_23"}
)

