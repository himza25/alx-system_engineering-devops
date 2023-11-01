#!/usr/bin/env ruby

log_line = ARGV[0]
# Extract sender, receiver, and flags from the log line
result = log_line.scan(/\[from:(.+?)\] \[to:(.+?)\] \[flags:(.+?)\]/).first
# Output the sender, receiver, and flags
puts "#{result[0]},#{result[1]},#{result[2]}"
