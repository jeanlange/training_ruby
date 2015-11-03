time = Time.now

time.strftime("It's %B %e, %Y")

time.monday?
time.tuesday?
Time.now - time
time > Time.now

require 'date'

Date.parse('2014-09-20')
Date.parse('2013-09-20')
Date.parse('2014-09-20') > Date.parse('2013-09-20')
