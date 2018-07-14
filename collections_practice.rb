def beings_with_r(arr)
  result = true
  arr.each do {|item|
    if item.start_with? ("r")
      result = false
    end
  }
  result
end
