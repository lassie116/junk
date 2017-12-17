
def main
  filepath = (ARGV.shift || "1G.dat")
  sum = 0
  dict = {}
  open(filepath,"r") do |f|
    f.each_line do |line|
      sum += line.size
=begin
      address, mode = line.chomp.split(" ")
      a = address.to_i
      dict[a] ||= []
      dict[a] << mode
=end
    end
  end
  p sum
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
