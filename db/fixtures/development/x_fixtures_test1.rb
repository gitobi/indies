Account.seed(
  {id: "11111111-1111-1111-1111-111111111111", mail: "test1@gmail.com", phone: "000-0000-0001"},
  {id: "11111111-1111-1111-1111-111111111112", mail: "test2@gmail.com", phone: "000-0000-0002"},
  {id: "11111111-1111-1111-1111-111111111113", mail: "test3@gmail.com", phone: "000-0000-0003"}
)
Scope.seed(
  {id: "11111111-1111-1111-1111-111111111111", range: "public"},
  {id: "11111111-1111-1111-1111-111111111112", range: "follows"},
  {id: "11111111-1111-1111-1111-111111111113", range: "followered"},
  {id: "11111111-1111-1111-1111-111111111114", range: "followed"},
  {id: "11111111-1111-1111-1111-111111111115", range: "private"}
)
Role.seed(
  {id: "11111111-1111-1111-1111-111111111111", name: "プログラマー"},
  {id: "11111111-1111-1111-1111-111111111112", name: "イラストレーター"},
  {id: "11111111-1111-1111-1111-111111111113", name: "作曲"}
)
User.seed(
  {id: "11111111-1111-1111-1111-111111111111", scope_id: "11111111-1111-1111-1111-111111111111", account_id: "11111111-1111-1111-1111-111111111111", role_id: "11111111-1111-1111-1111-111111111111", name: "test_user_1", picture: "test_pict_1", comment: "test_comment_1", ditail: "test_ditail_1"},
  {id: "11111111-1111-1111-1111-111111111112", scope_id: "11111111-1111-1111-1111-111111111112", account_id: "11111111-1111-1111-1111-111111111112", role_id: "11111111-1111-1111-1111-111111111112", name: "test_user_2", picture: "test_pict_2", comment: "test_comment_2", ditail: "test_ditail_2"},
  {id: "11111111-1111-1111-1111-111111111113", scope_id: "11111111-1111-1111-1111-111111111113", account_id: "11111111-1111-1111-1111-111111111113", role_id: "11111111-1111-1111-1111-111111111113", name: "test_user_3", picture: "test_pict_3", comment: "test_comment_3", ditail: "test_ditail_3"}
)
Team.seed(
  {id: "21111111-1111-1111-1111-111111111111", scope_id: "11111111-1111-1111-1111-111111111111", name: "test_team_1", picture: "test_pict_1", comment: "test_comment_1", ditail: "test_ditail_1"},
  {id: "21111111-1111-1111-1111-111111111112", scope_id: "11111111-1111-1111-1111-111111111112", name: "test_team_2", picture: "test_pict_2", comment: "test_comment_2", ditail: "test_ditail_2"},
  {id: "21111111-1111-1111-1111-111111111113", scope_id: "11111111-1111-1111-1111-111111111113", name: "test_team_3", picture: "test_pict_3", comment: "test_comment_3", ditail: "test_ditail_3"}
)
Project.seed(
  {id: "31111111-1111-1111-1111-111111111111", scope_id: "11111111-1111-1111-1111-111111111111", name: "test_project_1", picture: "test_pict_1", comment: "test_comment_1", ditail: "test_ditail_1"},
  {id: "31111111-1111-1111-1111-111111111112", scope_id: "11111111-1111-1111-1111-111111111112", name: "test_project_2", picture: "test_pict_2", comment: "test_comment_2", ditail: "test_ditail_2"},
  {id: "31111111-1111-1111-1111-111111111113", scope_id: "11111111-1111-1111-1111-111111111113", name: "test_project_3", picture: "test_pict_3", comment: "test_comment_3", ditail: "test_ditail_3"}
)
RelationTeamUser.seed(
  {team_id: "21111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111112"},
  {team_id: "21111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111113"}
)
RelationProjectUser.seed(
  {project_id: "31111111-1111-1111-1111-111111111111", user_id: "11111111-1111-1111-1111-111111111111"}
)
RelationProjectTeam.seed(
  {project_id: "31111111-1111-1111-1111-111111111111", team_id: "21111111-1111-1111-1111-111111111111"}
)

