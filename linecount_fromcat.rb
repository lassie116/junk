
def main
  line_count = 0
  while (line = gets)
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
