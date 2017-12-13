# compare first interval with new interval
# merge if new iterval and first interval overlap
# go to next interval if there is no overlap

class Interval
	attr_accessor :start, :end

	def initialize(s=0, e=0)
	    @start = s
	    @end = e
	end
end

def insert(intervals, new_interval)
	intervals.each do |range|
		if range.start == new_interval.start
			range.start = new_interval.start
		end
		if range.end < new_interval.end
			range.end = new_interval.end
		end
	end
	p intervals
end

# example_one

intervals = [Interval.new(1, 3), Interval.new(6, 9)]

new_interval = Interval.new(2, 5)

insert(intervals, new_interval)
# -> [1,5],[6,9]