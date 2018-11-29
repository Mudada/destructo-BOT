ttostring = (table) ->
	str = ""
	for k, v in pairs table
		str = str .. k .. ":<" .. v .. ">\n"
	str

checkIfUp = (message, _) ->
	message.channel\send 'Estamos vivando, a si!'

whilo = (message, arg) ->
	for i = 1, if tonumber(arg[2]) > 10 then 10 else arg[2]
		message.channel\send arg[3]

rolo = (message, _) ->
	print "giving role list to #{message.author.username}"
	message.author\send "Eres los rolos del destructo del anus, a si!"
	roles = {role.name, role.id for role in message.guild.roles\iter!}
	message.author\send ttostring roles

soy = (message, arg) ->
	if role = message.guild.roles\get arg[2]
		print "giving role #{role.name} to #{message.author.username}"
		message.member\addRole role.id
	else
		message.channel\send "Tu condition es invalid, a si!"

sf = {
	["!pingo"]: checkIfUp,
	["!whilo"]: whilo,
	["!rolo"]: rolo,
	["!soy"]: soy
}

{:sf}
