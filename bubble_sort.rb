require 'pry-byebug'
def bubble_sort(array)
    array.each_index do |index|
        right = 0
        left = 1
        if(index != 0)
            while(array[index -right] < array[index-left])
                temp = array[index-right]
                array[index-right] = array[index-left]
                array[index-left] = temp
                if((index - left) != 0)
                    right+= 1
                    left += 1
                end
            end
        end
    end
    array
end

p bubble_sort([3,2,1,5,6,4,2,6,4,6,2,9,5,1,0])

        