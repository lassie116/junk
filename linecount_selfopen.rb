
def main
  filepath = (ARGV.shift || "1G.dat")
  line_count = 0
  File.foreach(filepath) do |line|
    line_count += 1
  end
  puts "#{line_count} lines read."
end

if __FILE__ == $0
  main
=begin
  require 'ruby-prof'
  RubyProf.start
  main
  result = RubyProf.stop
  printer = RubyProf::FlatPrinter.new(result)
  printer.print(STDOUT)
=end
end
