discordia = require 'discordia'
message = require 'message'

sm = message.sf
client = discordia.Client()

rolesToAdd = {
	tlmsc: '254961805946912769'
}

client\on 'ready', ->
	print 'Estamos connecto, a si!'

client\on 'messageCreate', (message) ->
	for k in pairs sm
		if k == message.content
			sm[k] message

client\on 'memberJoin', (member) ->
	for k, v in pairs rolesToAdd
		member\addRole v
	member.user\send 'Soy el bienvenido en el dome del destructo del anus, a si!'

client\run 'Bot ' .. os.getenv"DESTRUCTOBOT"
