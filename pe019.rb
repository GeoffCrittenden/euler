sundays = 0
(1901..2000).each { |year| (1..12).each { |month| sundays += 1 if Time.new(year,month,1).sunday? } }
p sundays
