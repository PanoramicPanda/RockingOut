# Runs all of the files in the setlist directory using the Kaiser-Ruby Gem.
# You can have the transpiled code printed out before the result by sending 'show-tabs' along with the script

Dir.glob("setlist/*.rock") do |rockstar|
  puts "===== Playing #{rockstar.gsub('setlist/', '')} =====\n\n"
  system "kaiser-ruby transpile ./#{rockstar} --show-source" if ARGV[0] == 'show-tabs'
  system "kaiser-ruby execute ./#{rockstar}"
  puts '===================='
end