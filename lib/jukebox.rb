songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  songs.each_with_index do |song, index|
    if choice == song || choice == index+1 
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end  
  end
end  

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  command= ""
  while command
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when command == "list"
      list(songs)
    when command == "play"
      play(songs)
    when command == "help"
      help
    when command == "exit"
      exit_jukebox
      break
    end
  end  
end