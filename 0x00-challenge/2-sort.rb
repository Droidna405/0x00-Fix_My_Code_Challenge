###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next unless arg =~ /^-?\d+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert the integer at the correct position in the sorted array
    i = 0
    while i < result.size && result[i] < i_arg do
            i += 1
    end
    result.insert(i, i_arg)
end

# print the sorted result
puts result
