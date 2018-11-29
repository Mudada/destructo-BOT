discordia = require 'discordia'
message = require 'message'

sm = message.sf
adm = message.admin
client = discordia.Client()

rolesToAdd = {
	tlmsc: '254961805946912769'
}

client\on 'ready', ->
	print 'Estamos connecto, a si!'

client\on 'messageCreate', (message) ->
	args = {}
	for w in string.gmatch message.content, "%S+"
		print "Inserting #{w} in args"
		table.insert args, w
	for k in pairs sm
		if k == args[1]
			sm[k] message, args

client\on 'memberJoin', (member) ->
	for k, v in pairs rolesToAdd
		member\addRole v
	member.user\send 'Soy el bienvenido en el domen del destructo del anus, a si!'

client\run 'Bot ' .. os.getenv"DESTRUCTOBOT"
