checkIfUp = (message) ->
	message.channel\send 'Estamos vivando, a si!'

bango = (target) ->
	message.channel\send ":#{target}: 
:#{target}: :void: :void: :void: :wata: 
:#{target}: :void: :void: :watashi: 
:#{target}: :void: :gun: :watashi: 
:#{target}: :bangbang: :gun: :watashi: 
:bloodSplat: :void: :void: :watashipipe: 
:bloodSplat: :void: :void: :void: :shipipe: 
:bloodSplat:"

sf = {
	["!pingo"]: checkIfUp,
	["!bango"]: bango
}

{:sf}
