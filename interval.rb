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
	# intervals.each do |range|
	# 	if range.start > new_interval.start
	# 		range.start = new_interval.start
	# 	end
	# 	if range.end < new_interval.end
	# 		range.end = new_interval.end
	# 	end
	# end
	# p intervals
	p new_interval_range = (new_interval.start..new_interval.end).to_a
	intervals_ranges = intervals.map { |range| (range.start..range.end).to_a }
	intervals_ranges.each do |range|
		p range
		# new_interval_range.include?(range)
	end
end

# example_one

intervals = [Interval.new(1, 3), Interval.new(6, 9)]

new_interval = Interval.new(2, 5)

insert(intervals, new_interval)
# -> [1,5],[6,9]

# example_two

intervals = [Interval.new(1,2), Interval.new(3,5), Interval.new(6,7), Interval.new(8,10), Interval.new(12,16)]

new_interval = Interval.new(4,9)

insert(intervals, new_interval)
# -> [1,2],[3,10],[12,16]