
def alphabetize(arr,rev = false)
    if rev == true
        arr.sort!{|a,b| b <=> a}  #arr.reverse!
    else
        arr.sort!
    end  
end

numbers = [43,1,5,1,3,6,12,4]
alphabetize(numbers, true)
puts numbers
