# Recursion In Action

# One type of problem in which recursion is a natural fit is where we need to delve into multiple layers of a problem without knowing how many layers there are.

# Take the example of traversing through a filesystem. Let's say you have a script that does something with all the contents inside a directory, wuch as printing out all the subdirectory names.

# However, you don't want the script to only handle the immediate subdirectores, you want it to act on all the subdirectores within the subdirectories of the directory and all of their subdirectories.

def find_directores(directory)
  Dir.foreach(directory) do |filename|
    if File.directory?("#{directory}/#{filename}") &&
    filename != "." && filename != ".."
      puts "#{directory}/#{filename}"
      find_directories("#{directory}/#{filename}")
    end
  end
end

find_directories(".")
