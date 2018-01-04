local discordia = require('discordia')
local sm = require('message')
local client = discordia.Client()
local rolesToAdd = {
  tlmsc = '254961805946912769'
}
client:on('ready', function()
  return print('Estamos connecto, a si!')
end)
client:on('messageCreate', message(function()
  for k in sm do
    if k == message.content then
      sm[k](message)
    end
  end
end))
client:on('memberJoin', member(function()
  for k, v in pairs(rolesToAdd) do
    member:addRole(v)
  end
  return member.user:send('Soy el bienvenido en el dome del destructo del anus, a si!')
end))
return client:run('Bot' .. os.getenv("DESCTRUCTOBOT"))
