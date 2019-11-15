Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../scripts/hubot-s-n-w.coffee')

describe 'XP helper', ->
  beforeEach -> 
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'sets XP correctly', ->
    @room.user.say('guandalf', '@hubot =1234XP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot =1234XP']
        ['hubot', '@guandalf Done. You had 0. New XP count is: 1234']
      ]

  it 'retireves the XP correctly', ->
    @room.user.say('guandalf', '@hubot ?XP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot ?XP']
        ['hubot', '@guandalf You have 0 XP']
      ]