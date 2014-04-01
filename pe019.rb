t = Time.now
sundays = 0
# (1901..2000).each { |year| (1..12).each { |month| sundays += 1 if Time.new(year,month,1).sunday? } }

weekdays = ['monday','tuesday','wednesday','thursday','friday','saturday','sunday']
days = weekdays * 5304
month_days = [31,28,31,30,31,30,31,31,30,31,30,31]
year = 1900
month = 1
while year < 2001
  if month == 13
    year += 1
    month = 1
  end
  sundays += 1 if days[0] == 'sunday' && year > 1900
  if year % 400 == 0 && month_days[0] == 28
    days.slice!(0,month_days[0] + 1)
  elsif year % 100 == 0
    days.slice!(0,month_days[0])
  elsif year % 4 == 0 && month_days[0] == 28
    days.slice!(0,month_days[0] + 1)
  else
    days.slice!(0,month_days[0])
  end
  month_days << month_days.shift
  month += 1
end
p sundays
p Time.now - t
