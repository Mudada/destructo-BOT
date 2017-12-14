local discordia = require('discordia')
local sm = require('message')

local client = discordia.Client()

local rolesToAdd = {
	tlmsc = '254961805946912769'
}

client:on('ready', function()
	print('Estamos connecto, a si!')
end)

client:on('messageCreate', function (message)
	for k in pairs(sm) do
		if k == message.content then
			sm[k](message)
		end
	end
end)

client:on('memberJoin', function (member)
	for k, v in pairs(rolesToAdd) do
		member:addRole(v)
	end
	member.user:send('Soy el bienvenido en el domain del destructo del anus, a si!')
end)

client:run('Bot ' .. os.getenv("DESTRUCTOBOT"))
