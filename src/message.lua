local checkIfUp
checkIfUp = function(message)
  return message.channel:send('Estamos vivando, a si!')
end
local sf = {
  ["!pingo"] = checkIfUp
}
return {
  sf = sf
}
