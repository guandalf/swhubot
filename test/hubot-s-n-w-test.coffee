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

describe 'GP helper', ->
  beforeEach -> 
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'sets GP correctly', ->
    @room.user.say('guandalf', '@hubot =1234GP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot =1234GP']
        ['hubot', '@guandalf Done. You had 0. New GP count is: 1234']
      ]

  it 'retireves the GP correctly', ->
    @room.user.say('guandalf', '@hubot ?GP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot ?GP']
        ['hubot', '@guandalf You have 0 GP']
      ]

  it 'adds GP correctly', ->
    @room.user.say('guandalf', '@hubot +123GP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot +123GP']
        ['hubot', '@guandalf Done. You had 0. New GP count is: 123']
      ]

  it 'subtracts GP correctly', ->
    @room.user.say('guandalf', '@hubot -123GP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot -123GP']
        ['hubot', '@guandalf Done. You had 0. New GP count is: -123']
      ]

describe 'SP helper', ->
  beforeEach -> 
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'sets SP correctly', ->
    @room.user.say('guandalf', '@hubot =1234SP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot =1234SP']
        ['hubot', '@guandalf Done. You had 0. New SP count is: 1234']
      ]

  it 'retireves the SP correctly', ->
    @room.user.say('guandalf', '@hubot ?SP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot ?SP']
        ['hubot', '@guandalf You have 0 SP']
      ]

  it 'adds SP correctly', ->
    @room.user.say('guandalf', '@hubot +123SP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot +123SP']
        ['hubot', '@guandalf Done. You had 0. New SP count is: 123']
      ]

  it 'subtracts SP correctly', ->
    @room.user.say('guandalf', '@hubot -123SP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot -123SP']
        ['hubot', '@guandalf Done. You had 0. New SP count is: -123']
      ]

describe 'BP helper', ->
  beforeEach -> 
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'sets BP correctly', ->
    @room.user.say('guandalf', '@hubot =1234BP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot =1234BP']
        ['hubot', '@guandalf Done. You had 0. New BP count is: 1234']
      ]

  it 'retireves the BP correctly', ->
    @room.user.say('guandalf', '@hubot ?BP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot ?BP']
        ['hubot', '@guandalf You have 0 BP']
      ]

  it 'adds BP correctly', ->
    @room.user.say('guandalf', '@hubot +123BP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot +123BP']
        ['hubot', '@guandalf Done. You had 0. New BP count is: 123']
      ]

  it 'subtracts BP correctly', ->
    @room.user.say('guandalf', '@hubot -123BP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot -123BP']
        ['hubot', '@guandalf Done. You had 0. New BP count is: -123']
      ]

describe 'CP helper', ->
  beforeEach -> 
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'sets CP correctly', ->
    @room.user.say('guandalf', '@hubot =1234CP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot =1234CP']
        ['hubot', '@guandalf Done. You had 0. New CP count is: 1234']
      ]

  it 'retireves the CP correctly', ->
    @room.user.say('guandalf', '@hubot ?CP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot ?CP']
        ['hubot', '@guandalf You have 0 CP']
      ]

  it 'adds CP correctly', ->
    @room.user.say('guandalf', '@hubot +123CP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot +123CP']
        ['hubot', '@guandalf Done. You had 0. New CP count is: 123']
      ]

  it 'subtracts CP correctly', ->
    @room.user.say('guandalf', '@hubot -123CP').then =>
      expect(@room.messages).to.eql [
        ['guandalf', '@hubot -123CP']
        ['hubot', '@guandalf Done. You had 0. New CP count is: -123']
      ]
