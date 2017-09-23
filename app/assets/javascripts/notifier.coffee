# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
App.notifier = App.cable.subscriptions.create "NotifierChannel", 
  connected: ->
    #Called when the subscription is ready for use on the server

  disconnected: -> 
    #Called when the subscription has been terminated by the server

  received: (data) ->
    #Called when there's incoming data on the websocket for this channel
    $('#notification').append data['message']
    #alert data['notification']

  sender: (notification) ->
    console.log(notification)
    @perform 'sender', notification: notification 

$ ->
  $("#sender-input").on 'keypress', (event) ->
    if event.keyCode is 13
      App.notifier.sender event.target.value
      event.target.value = ''
      event.preventDefault()