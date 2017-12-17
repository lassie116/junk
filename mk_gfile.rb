
def main
  gsize = (ARGV.shift || 1).to_i
  limit_filesize = (2 ** 30) * gsize
  filepath = "#{gsize}G.dat"
  write_bytes = 0
  pre_percent = -1
  base = 2 ** 64
  unit = 500000
  open(filepath,"w") do |f|
    i = -1
    loop do
      i += 1
      # address = ("%x" % rand(base))
      address = rand(base).to_s(16)
      # address = '0123456789abcdef'
      # line = '0123456789abcdef W'
      read_write = ["R","W"][rand(2)]
      line = "#{address} #{read_write}\n"
      # f.puts line
      f.write line
      # write_bytes += (line.size + 1)
      write_bytes += line.size
      break if write_bytes > limit_filesize
      if i % unit == 0
        puts ("% 3d%" % (write_bytes * 100 / limit_filesize))
      end
=begin
      percent = write_bytes * 100 / limit_filesize
      if percent > pre_percent
        puts ("% 3d%" % percent)
        pre_percent = percent
      end
=end
    end
  end
  p File.stat(filepath).size
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
