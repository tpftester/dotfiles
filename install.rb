#!/usr/bin/env ruby

require 'rubygems'

home = File.expand_path('~')

files = Dir['*'].to_a
files = [files] unless files.is_a? Array

files.each do |file|
  next if file =~ /install|osx|Gemfile*/
  target = File.join(home, ".#{file}")

  ok_to_delete = if File.exists?(target)
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
