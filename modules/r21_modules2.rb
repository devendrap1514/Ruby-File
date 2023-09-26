# $LOAD_PATH << '.'

require_relative "date"


class CustomDate
include Date
    def getTime()
        puts(Date::WEEK_DAYS)
        Date.getTime()
    end
end

s = CustomDate.new()
puts(s.getTime())
puts(Date.getTime())