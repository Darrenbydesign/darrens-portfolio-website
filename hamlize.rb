require 'haml'

def find filename
	return filename if File.exists? filename
	path = File.dirname ARGV[0]
	filename = path+"/"+filename
	return filename if File.exists? filename
	throw "Could not find file."
end

def partial filename
	source = File.read(find(filename))
	engine = Haml::Engine.new(source)
	engine.render(binding)
end

File.open(ARGV[0].sub(/\.haml/i, ".html"), "w") { |file| file.puts partial ARGV[0] }

