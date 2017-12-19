
def main
  filepath = (ARGV.shift || "1G.dat")
  line_count = 0
  IO.popen("cat #{filepath}") do |io|
    io.each_line do |line|
      line_count += 1
    end
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
