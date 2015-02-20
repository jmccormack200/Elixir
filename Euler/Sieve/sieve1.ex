defmodule Sieve do
    
    def primelessthan(n) do
        fillList(n,2,[])
    end
    
    def fillList(n,count,list) when count <= n do
        list = Enum.concat(list,[count])
        fillList(n,count+1, list)
    end
    
    def fillList(n,_,list) do
        removeValues(n,list,2)
    end
    
    
    def removeValues(n, list, value) when value < n do
        valuer = fn(number) -> (number == value or rem(number,value) != 0) end
        list = Enum.filter(list, valuer)
        removeValues(n,list, value+1)
    end
    
    def removeValues(_,list,_) do
        list
    end
end