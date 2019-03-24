#!/usr/bin/env python
# -*- coding: utf-8 -*-
## NAME sts2ics
## DESCRIPTION Spot the Station to ICS. Converts a 'spot the station' string to an ics format file. 
## AUTHOR aaronferrucci
## TAGS spotthestation, nasa, calendar, ics

# At https://spotthestation.nasa.gov/ you can sign up for email
# notifications when the International Space Station will be visible overhead.
# The email will look something like this:
#   Time: Sat Mar 23 8:03 PM, Visible: 4 min, Max Height: 54°, Appears: 39° above W, Disappears: 10° above NE
# But... it's handy to put the above info into a calendar event. I've
# been doing it manually, but it gets tedious. Hence this script, which creates
# a calendar import file (ics format) for easy import into a calendar.

from icalendar import Calendar, Event, vDate, vDatetime
from datetime import datetime, timedelta
import sys
import re

def sts2ics(sts_string, year=None):
    if not year:
        now = datetime.now()
        year = now.year

    m = re.search("^Time: ([^,]+), Visible: (\d+) min, (.*)$", sts_string)
    if not m:
        sys.exit("Failed to parse input '%s'" % sts_string)

    starttime = m.group(1) + " " + str(year)
    minutes = int(m.group(2))
    description = m.group(3)

    start = datetime.strptime(starttime, "%a %b %d %I:%M %p %Y")
    end = start + timedelta(minutes=minutes)

    vStart = vDatetime(start)
    vEnd = vDatetime(end)

    event = Event()
    event.add('summary', "ISS viewing")
    event.add('description', description)
    event.add('dtstart', vStart)
    event.add('dtend', vEnd)

    cal = Calendar()
    cal.add('prodid', '-//aaronferrucci//sts2ics//')
    cal.add('version', '1.0')

    cal.add_component(event)

    return cal

if __name__ == '__main__':

    sts_string = \
      "Time: Sat Mar 23 8:03 PM, Visible: 4 min, " + \
      "Max Height: 54°, Appears: 39° above W, Disappears: 10° above NE"

    cal = sts2ics(sts_string)
    print cal.to_ical()

