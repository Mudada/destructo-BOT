discordia = require 'discordia'
sm = require 'message'

client = discordia.Client()

rolesToAdd = {
	tlmsc: '254961805946912769'
}

client\on 'ready', ->
	print 'Estamos connecto, a si!'

client\on 'messageCreate', message ->
	for k in sm
		if k == message.content
			sm[k] message

client\on 'memberJoin', member ->
	for k, v in pairs rolesToAdd
		member\addRole v
	member.user\send 'Soy el bienvenido en el dome del destructo del anus, a si!'

client\run 'Bot' .. os.getenv"DESCTRUCTOBOT"