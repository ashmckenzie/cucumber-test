#!/usr/bin/env ruby

if ARGV.count == 2
  puts ARGV[0].to_i * ARGV[1].to_i
elsif ARGV.count == 1
  puts ARGV[0].to_i * ARGV[0].to_i
end