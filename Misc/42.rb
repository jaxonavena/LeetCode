# INCOMPLETE

# @param {Integer[]} height
# @return {Integer}
def trap(height)
    # remove zeros on left side
    # for each index walk to the nearest = or greater number at a later index, 
    # multiply the first height by the number of indeces between the two
    # subtract that product by the sum of the numbers in the indeces between them

    total = 0
    skip_to = 0
    height.each.with_index do |h, i|
        if h != 0 and i != height.length - 1 and i >= skip_to
            j = 0
            num_indeces_between = 0
            while j < height.length
                if i != j and j > i and height[j] >= h
                    skip_to = j
                    num_indeces_between = (j - 1) - i
                    # squares = num_indeces_between * h
                    # subtract_blox = height[i + 1...j].sum
                    # jax = (num_indeces_between * h) - (height[i + 1...j].sum)
                    total += (num_indeces_between * h) - (height[i + 1...j].sum)
                    break
                end
                j += 1
            end
            # puts "\nbroke"
            # puts "h: #{h}"
            # puts "j: #{height[j]}"
            # puts "num between: #{num_indeces_between}"
            # puts "total squares: #{squares}"
            # puts "subtract blox: #{subtract_blox}"
            # puts "add: #{jax}"
            # puts "total: #{total}"
        end
    end
    total



    # build the map in arrays, for each row count empty spaces between x
    # h = height.max
    # w = height.length

    # trap_map = []
    # h.times do |i|
    #     trap_map.append(Array.new(w) { '0' }) # add h rows of specified length w
    # end

    # height.each.with_index do |h, i| # add x's to trap map
    #     j = 0
    #     until j == h - 1 or h == 0
    #         trap_map[j][i] = 'x'
    #         j += 1
    #     end
    # end

    # count = 0
    # trap_map.each do |row|
    #     i = /x*(0)*x*/ =~ row.join
    #     while i 
    #         row.slice!(i)
    #         count += 1
    #     end
    # end
    
    # trap_map.each do |row| 
    #     puts row.join.inspect
    # end

    # count
end



#      x
# x    x
# x  x x
# xx xxx
# xx xxx
