
def main
  filepath = (ARGV.shift || "1G.dat")
  sum = 0
  dict = {}
=begin NG
  File.readlines(filepath).each do |line|
    p line
  end
=end
  target = (ARGV.shift || 1000000).to_i
  File.foreach(filepath) do |line|
    if target == 0
      puts line.chomp
      break
    end
    target -= 1
    # p line
  end
=begin
  open(filepath,"r") do |f|
    f.each_line do |line|
    end
  end
=end
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
