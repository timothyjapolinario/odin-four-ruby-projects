require 'pry-byebug'
def stock_picker(days)
    days.reduce(Array.new) do |result, day|
        if(result.length < 2)
            result[0] = day
            result[1] = day
            result
        end
        if(day < result[0])
            result[0] = day
        end
        if(day > result[1])
            result[1] = day
            
        end
        result
    end
end

p stock_picker([1,4,6,3,0])

        