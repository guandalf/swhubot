# Description:
#   Helps to play S&W by adding some basic helpers
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   + x XP - adds "x" XPs to the user asking for that
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   guandalf

module.exports = (robot) ->
  # your code here
  robot.respond /open the (.*) doors/i, (res) ->
    doorType = res.match[1]
    if doorType is "pod bay"
      res.reply "I'm afraid I can't let you do that, " + res.envelope.user.name
    else
      res.reply "Opening #{doorType} doors"

  robot.respond /([\+,?,=])([0-9]*)([X,H])P/, (res) ->
    action = res.match[1]
    xp = res.match[2] * 1
    stat = res.match[3] + 'P'
    key = res.envelope.user.id + stat
    actualXP = robot.brain.get(key) * 1 or 0
    if action is '+'
      newXP = actualXP + xp

      robot.brain.set(key, newXP)
      res.reply 'Done. You had ' + actualXP + '. New ' + stat + ' count is: ' + newXP

    if action is '='
      robot.brain.set(key, xp)
      res.reply 'Done. You had ' + actualXP + '. New ' + stat + ' count is: ' + xp

    if action is '?'
      res.reply 'You have ' + actualXP + ' ' + stat