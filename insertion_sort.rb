# Chapter 2

def insertion_sort(array)
    for j in (1..(array.length))
        break if array[j].nil? 
        
        current_item = array[j] 
        i = j - 1 

        while i >= 0 && array[i] > current_item 
            array[i + 1] = array[i] 
            i = i - 1
        end
       
        array[i + 1] = current_item 
    end
    array.to_s
end

puts insertion_sort([5,2,4,6,1,3])

puts insertion_sort([5,2,4,6,1,3,3,3,4,5,7,8,12,2])