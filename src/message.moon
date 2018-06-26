checkIfUp = (message, _) ->
	message.channel\send 'Estamos vivando, a si!'

bango = (message, target) ->
	message.channel\send ":#{target[2]}: 
:#{target[1]}: :void: :void: :void: :wata: 
:#{target[1]}: :void: :void: :watashi: 
:#{target[1]}: :void: :gun: :watashi: 
:#{target[1]}: :bangbang: :gun: :watashi: 
:bloodSplat: :void: :void: :watashipipe: 
:bloodSplat: :void: :void: :void: :shipipe: 
:bloodSplat:"

sf = {
	["!pingo"]: checkIfUp,
	["!bango"]: bango
}

{:sf}
