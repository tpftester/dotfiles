#!/usr/bin/env ruby

require 'rubygems'
require 'trollop'

opts = Trollop::options do
  banner "Install dot files into your home directory"
  opt :individual, "filename", :type => :string, :required => false, :short => "i"
  opt :force, :type => :boolean, :default => :false, :short => "f"
end

home = File.expand_path('~')

files = Dir['*'].to_a
files = opts[:individual] if opts[:individual]
files = [files] unless files.is_a? Array

files.each do |file|
  next if file =~ /install/
  target = File.join(home, ".#{file}")

  ok_to_delete = if opts[:force]
    true
  else
    print "Overwrite file '#{target}'? (y/n) "
    response = gets.chomp.downcase
    response == 'y'
  end

  if File.exists?(target) 
    if ok_to_delete
      # TODO: Should probably back these up first.
      File.delete(target)
      puts "Deleting #{target}"
    else
      puts "Skipping..."
      next
    end
  end
  puts "creating alias from #{File.expand_path file} to #{target}"
  `ln -s #{File.expand_path file} #{target}`
end

# git push on commit
#`echo 'git push' > .git/hooks/post-commit`
#`chmod 755 .git/hooks/post-commit`
