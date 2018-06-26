
checkIfUp = (message, _) ->
	message.channel\send 'Estamos vivando, a si!'

bango = (message, target) ->
	emote_id =
		void: ":void:400243350743023616",
		wata: "<:wata:457208092480765963>",
		watashi:"<:watashi:423857396566196229>",
		watashipipe:"<:watashipipe:445960866437791748>",
		shipipe:"<:shipipe:457208092363325443>",
		bloodSplat:"<:bloodSplat:400244953592365056>"

	message.channel\send "#{target[2]} 
#{target[2]} #{emote_id["void"]} #{emote_id["void"]} #{emote_id["void"]} #{emote_id["wata"]}
#{target[2]} #{emote_id["void"]} #{emote_id["void"]} #{emote_id["watashi"]}
#{target[2]} #{emote_id["void"]} :gun: #{emote_id["watashi"]}
#{target[2]} :bangbang: :gun: #{emote_id["watashi"]}
#{emote_id["bloodSplat"]} #{emote_id["void"]} #{emote_id["void"]} #{emote_id["watashipipe"]}
#{emote_id["bloodSplat"]} #{emote_id["void"]} #{emote_id["void"]} #{emote_id["void"]} #{emote_id["shipipe"]}
#{emote_id["bloodSplat"]}"

sf = {
	["!pingo"]: checkIfUp,
	["!bango"]: bango
}

{:sf}
