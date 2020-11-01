# Chapter 2

def merge(array, p, q, r)
    left = array[p..q] 
    right = array[q+1..r] 
    i = 0 # left array index
    j = 0 # right array index
    k = p # main array 
    while i < left.length && j < right.length
        if left[i] < right[j]
            array[k] = left[i]  
            i += 1
        else
            array[k] = right[j]
            j += 1 
        end
        k += 1
    end
    if j == right.length
        array[k..r+1] = left[i..]
    end
    puts array.to_a
end


items = [2, 4, 5, 7, 1, 2, 3, 6]
merge(items, 0, 3, 7)