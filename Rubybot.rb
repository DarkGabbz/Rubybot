require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'Replace With Your Token', client_id: 273147529863102465, prefix: 'c-'

#commands

bot.command :ping do |event|
  event << 'pong!'

end

bot.command(:exit, help_available: false) do |event|
  break unless event.user.id == 272738271862325249 # Replace number with your ID

  bot.send_message(event.channel.id, 'Calafska-Bot out!')
  exit
end


bot.command(:suicidetutorial) do |event|
  event.respond ('https://www.youtube.com/watch?v=Qg4SVGFbPZk')
end

bot.command(:virtualboy) do |event|
  event.respond ('https://www.youtube.com/watch?v=SdZo6Gx9DNQ')
end

#Only one image , we should change that c:!
bot.command(:nudes) do |event| 
  event.respond ('http://img.rule34.xxx//samples/2088/sample_d69ff8de0cd0cd3e3ee59074f4f24712cba51cb3.jpg?2262669')
end

bot.command(:github) do |event| 
  event.respond ('https://github.com/Calafska')
end

bot.command(:ky) do |event| 
  event.respond ('https://www.youtube.com/watch?v=2dbR2JZmlWo')
end

bot.command(:expanddong) do |event|
  event.respond ('https://www.youtube.com/watch?v=iB-o1nfz6as')
end

bot.command(:pm) do |event|
  event.user.pm ('Hey this is Calafskas bot :) , pretty amazing that I work right ?')
end

bot.command(:kingy) do |event|
  event.respond ('Kingy the King')
end

bot.command(:whoami) do |event|
  event.respond ('Im Calafskas Discord bot programmed in Ruby :)! Visit my code on github , or fork my code.')
end

bot.command(:randomvideo) do |event|
  event.respond 'http://randomyoutube.net/watch'
end

bot.command(:imbored) do |event|
  event.respond ('InsultBot5000 says drink bleach you fucking cunt')
end

bot.command(:areyouintellegent) do |event|
  event.respond ('Im a simple Discord bot :) ! But maybe I will be intellegent')
end

#should send random porn video
bot.command(:porn) do |event|
  event.user.pm ('Welcome to the perverts c: pornhub.com')
end

bot.command(:insult) do |event|
  event.user.pm ('Think about the meaning of life')
end

bot.command(:whydoiexist) do |event|
  event.respond ('Because my dev coded me :).')
end

bot.command(:memes) do |event|
  event.respond ('https://en.wikipedia.org/wiki/Meme')
end

bot.command(:credits) do |event|
  event.respond ('Kingy : For the original code :) , Calafska : For moding the bot code , xtheman166 : For helping me out')
end

bot.command(:trying) do |event|
  event.respond ('Trying to help.')
end

bot.command(:username) do |event|
  event.user.name
end

bot.command(:cfw) do |event|
  event.respond ('Reinand or Luma ? Ill missgender AuroraWright quickly')
end 

bot.command(:calafska) do |event|
  event.respond ('The dev that made me :)') 
end

bot.command(:xthecube166) do |event|
  event.respond ('Thanks for cleaning my code :)') 
end

bot.command(:benadnam) do |event|
  event.respond 'https://i.maagic.pw/SweetFightExplode'
end

bot.command(:senddudes) do |event|
  event.respond 'https://i.maagic.pw/SweetFightExplode'
end

bot.command(:DarkGabbz) do |event|
  event.respond ('Peter Unlustig')
end

bot.command(:e621) do |event|
  event.respond 'https://e621.net/'
end

bot.command(:rule34) do |event|
  event.respond 'https://rule34.xxx/'
end

bot.command(:bug) do |event|
  event.user.pm ('Please report the bug to Calafska if you find one !') 
end

bot.command(:say) do |event|
  event.user.respond.message
end

bot.command(:sammy) do |event|
  event.respond 'https://www.youtube.com/channel/UC8B0hXnzvJgNyHDQPIHtQJQ'
end

bot.command(:date) do |event|
  event.user.pm ('Hi there ( ͡° ͜ʖ ͡°)')
end

bot.command(:temp) do |event|
  event.respond 'https://gbatemp.net/'
end

bot.command(:gbatemp) do |event|
  event.respond 'https://gbatemp.net/'
end

bot.command(:snowdin) do |event| 
  event.respond 'https://www.youtube.com/watch?v=xY37aWVokNQ'
end

bot.command(:source) do |event|
  event.respond 'https://github.com/Calafska/Calafskas-ruby-discord-bot'
end

bot.command(:GhostLatte) do |event|
  event.respond 'I want to get into the van bby ( ͡° ͜ʖ ͡°)'
end


# Music

bot.command(:connect) do |event|
  channel = event.user.voice_channel
  next "Im too mainstream to join nothing , please join a voicechat" unless channel
  bot.voice_connect(channel)
  "Ok, I'm in #{channel.name}"
end

bot.command(:play_music) do |event|
  voice_bot = event.voice
  voice_bot.play_music.mp3('/music.mp3')
  bot.voice_disconnect(channel)
end


bot.run
