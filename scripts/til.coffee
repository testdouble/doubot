# Description:
#   Searches for TIL posts and offers to make blog post issues for them
#
# Commands:
#   hubot til weekly hangout

module.exports = (robot) ->
  robot.hear /TIL (.+)/i, (msg) ->
    title = encodeURI("[TIL] Blog Post Idea")
    til_post = encodeURI(msg.match[0])

    message = "That looks like a good TIL post! Click here to post it as an issue to the blog: "
    url = "https://github.com/testdouble/double-takes/issues/new?title=#{title}&body=#{til_post}"
    msg.reply message + url
