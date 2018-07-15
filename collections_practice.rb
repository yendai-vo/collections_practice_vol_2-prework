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


def count_elements(arr)
  result = []

  arr.each {|item|
    exists = false
    result.each {|result|
      if result[:name] == item[:name]
        result[:count] += 1
        exists = true
      end
    }
    if(exists == false)
      temp_item = item
      temp_item[:count] = 1
      result.push(temp_item)
    end
  }

  result
end


def merge_data(arr1, arr2)
  result = []
  arr1.each { |key|
    temp_item = key
    attributes = arr2[0][key]
    temp_item.merge(attributes)
    result.push(temp_item)
  }
  result
end
