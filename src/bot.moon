discordia = require 'discordia'
message = require 'message'
argparse = require '../deps/argparse'

sm = message.sf
adm = message.admin
client = discordia.Client()
parser = with argparse()
	\name "command parser"
	\description "the bot's commands parser"
with parser\argument "cmd", "the command to execute"
	\args 1

rolesToAdd = {
	tlmsc: '254961805946912769'
}

client\on 'ready', ->
	print 'Estamos connecto, a si!'

client\on 'messageCreate', (message) ->
	args = parser\parse message
	print args
	-- for k in pairs sm
	--	if k == args[1]
	--		sm[k] message, args

client\on 'memberJoin', (member) ->
	for k, v in pairs rolesToAdd
		member\addRole v
	member.user\send 'Soy el bienvenido en el domen del destructo del anus, a si!'

client\run 'Bot ' .. os.getenv"DESTRUCTOBOT"
