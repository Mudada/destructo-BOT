local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
    if message.content == '!ping' then
        message.channel:send('Pong!')
    end
end)

client:run('Bot Mzg4MzIyNDQ0NDI0NzczNjQz.DRKe4Q.WsSMB_2rwlfYTNSG3NFD5YM56YE')
