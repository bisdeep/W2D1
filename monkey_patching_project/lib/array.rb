# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span 
        if self.empty? 
            return nil
        end
        self.max - self.min
    end

    def average
        if self.empty? 
            return nil
        end
        (self.sum).to_f / self.length
    end

    def median
        return nil if self.empty?

        if self.length.odd?
            mid = self.length / 2
            return self.sort[mid]
        end
            mid = (self.length / 2)
            return (sort[mid] + sort[mid - 1]) / 2.0
    end

    def counts
        count = Hash.new(0)
        self.each {|ele| count[ele] += 1}
        count
    end

    def my_count(target)
        my_count = 0
        self.each do |ele|
            if ele == target
                my_count += 1
            end
        end
        my_count
    end

    def my_index(target)
        self.each_with_index do |ele, idx|
            if ele == target
                return idx
            end
        end
        return nil
    end

    def my_uniq
        hash = Hash.new(0)
        self.each {|ele| hash[ele] += 1}
        hash.keys
    end

    def my_transpose
        newArr = []

        (0...self.length).each do |i|
            rows = []
            (0...self.length).each do |j|
                rows << self[j][i]
            end
            newArr << rows
        end
        newArr
    end


end
