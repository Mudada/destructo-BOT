checkIfUp = (message, _) ->
	message.channel\send 'Estamos vivando, a si!'

whilo = (message, arg) ->
	for i = 1, if tonumber(arg[2]) > 10 then 10 else arg[2]
		message.channel\send arg[3]

rolo = (message, _) ->
	message.guild.roles\forEach (role) ->
		print role.name

sf = {
	["!pingo"]: checkIfUp,
	["!whilo"]: whilo
	["!rolo"]: rolo
}

{:sf}
