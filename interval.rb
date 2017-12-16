

class Interval
	attr_accessor :start, :end

	def initialize(s=0, e=0)
		@start = s
		@end = e
	end

	def convert_to_range
		(self.start..self.end).to_a
	end
end

def insert(intervals, new_interval)
	new_interval_range = new_interval.convert_to_range
	p intervals_range = intervals.map { |interval| interval.convert_to_range }
end

# example_one

intervals = [Interval.new(1, 3), Interval.new(6, 9)]

new_interval = Interval.new(2, 5)

insert(intervals, new_interval)
# -> [1,5],[6,9]


# example_two

# intervals = [Interval.new(1,2), Interval.new(3,5), Interval.new(6,7), Interval.new(8,10), Interval.new(12,16)]

# new_interval = Interval.new(4,9)

# insert(intervals, new_interval)
# -> [1,2],[3,10],[12,16]