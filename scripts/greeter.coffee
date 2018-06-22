# Description:
#   Greets new slack users
#
# Commands:
#   none

module.exports = (robot) ->
  robot.adapter.client.on 'team_join', (user) ->
    robot.send user.name, "Welcome to Test Double. #{user.real_name}! Check out this sweet link! https://github.com/testdouble/mi6/pull/16/files#diff-298b59da4d2f73a3ca728fc1348eecfc"
