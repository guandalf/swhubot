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

  it 'adds XP correctly', ->
    @room.user.say('guandalf', '@hubot +123XP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot +123XP']
        ['hubot', '@guandalf Done. You had 0. New XP count is: 123']
      ]

  it 'subtracts XP correctly', ->
    @room.user.say('guandalf', '@hubot -123XP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot -123XP']
        ['hubot', '@guandalf Done. You had 0. New XP count is: -123']
      ]

describe 'HP helper', ->
  beforeEach -> 
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'sets HP correctly', ->
    @room.user.say('guandalf', '@hubot =1234HP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot =1234HP']
        ['hubot', '@guandalf Done. You had 0. New HP count is: 1234']
      ]

  it 'retireves the HP correctly', ->
    @room.user.say('guandalf', '@hubot ?HP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot ?HP']
        ['hubot', '@guandalf You have 0 HP']
      ]

  it 'adds HP correctly', ->
    @room.user.say('guandalf', '@hubot +123HP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot +123HP']
        ['hubot', '@guandalf Done. You had 0. New HP count is: 123']
      ]

  it 'subtracts HP correctly', ->
    @room.user.say('guandalf', '@hubot -123HP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot -123HP']
        ['hubot', '@guandalf Done. You had 0. New HP count is: -123']
      ]
