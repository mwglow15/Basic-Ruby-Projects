def bubble_sort(array)
    sorted = true

    range_end = array.length - 2
    for i in 0..range_end
        if array[i] > array[i+1]
            sorted = false
            temp = array[i]
            array[i] = array[i+1]
            array[i+1] = temp
        end
    end
    unless sorted
        bubble_sort(array)
    end
    return array
end

sorted_array = bubble_sort([5,10,25,1,7,4,3,78,2,0,2])

puts "Sorted array: #{sorted_array}"