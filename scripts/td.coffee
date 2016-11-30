# Description:
#   Enables TD operatives to conduct their operations and such.
#
# Notes:
#   PUBLIC EYES ONLY STUFF
#
# Commands:
#   hubot td weekly hangout

module.exports = (robot) ->
  robot.respond /td weekly( hangout)?/i, (msg) ->
    msg.reply "https://zoom.us/j/9587351091"
