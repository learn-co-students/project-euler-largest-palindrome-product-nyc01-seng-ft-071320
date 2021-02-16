# Implement your procedural solution here!
def is_palindrome(num)
    string = num.to_s
    reversed = string.split('').inject {|rev, c| c + rev}
    return reversed == string
end

def largest_palindrome_product
    numA = 999
    numB = 999
    answer = 0
    while numA > 100 || numB > 100
        prd = numA*numB
        if is_palindrome(prd) && (prd > answer)
            answer = prd
        end
        if (numA > 100)
            numA -= 1
        elsif (numA == 100) 
            numB = numB - 1
            numA = numB
        end
    end
    return answer
end