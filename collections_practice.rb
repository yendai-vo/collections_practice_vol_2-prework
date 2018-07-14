def begins_with_r(arr)
  result = true
  arr.each { |item|
    if !item.start_with? ("r")
      result = false
    end
  }
  result
end


def contain_a(arr)
  result = []
  arr.each { |item|
    if item.include?("a")
      result.push(item)
    end
  }
  result
end

def first_wa(arr)
  arr.each { |item|
    if(item.to_s.include?("wa"))
      return item
    end
  }
end

def remove_non_strings(arr)
  result = []

  arr.each {|item|
    if(item.is_a? String)
      result.push(item)
    end
  }
  result
end
