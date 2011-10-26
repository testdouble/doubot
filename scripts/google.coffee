# Returns the URL of the first google hit for a query
#
# google me <query>   - The Original. Queries Google for <query> and
#                       returns the URL of the first result

module.exports = (robot) ->
  robot.respond /(google)( me)? (.*)/i, (msg) ->
    googleMe msg, msg.match[3], (url) ->
      msg.send url

googleMe = (msg, query, cb) ->
  msg.http('http://www.google.com/search')
    .query(q: query)
    .get() (err, res, body) ->
      cb body.match(/<a href="([^"]*)" class=l>/)[1]

