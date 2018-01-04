checkIfUp = (message) ->
	message.channel\send 'Estamos vivando, a si!'

sf = {
	["!pingo"]: checkIfUp 
}

{:sf}