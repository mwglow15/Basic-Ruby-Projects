def stock_picker(stocks)
    maxvalue = 0
    maxpair = []
    stocks.each_with_index do |value1, index1|
        stocks.slice(index1..-1).each_with_index do |value2, index2|
            if value2 - value1 > maxvalue
            maxpair = [index1,index2 + index1,value1,value2]
            maxvalue = value2 - value1
        end
        end
    end
        return maxpair, maxvalue
end

bestpair, bestvalue = stock_picker([17,3,6,9,15,8,6,1,10])
puts "#{bestpair.slice(0,2)} For a profit of $#{bestpair[3]} - $#{bestpair[2]} == $#{bestvalue}"