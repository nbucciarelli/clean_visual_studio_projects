require 'fileutils'
files = Dir.glob('**/**.*')
directories = Dir.glob('**/**/')
files.reject!{ |file| !file.include?('.ncb') }.each do |file|
  puts "Deleting #{file.inspect}"
  File.delete('./' + file)
end
directories.reverse!.reject!{ |directory| !directory.include?('/Debug/') || !directory.include?('/Release/') }.each do |directory|
  puts "Deleting #{directory.inspect}"
  FileUtils.rm_rf('./' + directory)
end

