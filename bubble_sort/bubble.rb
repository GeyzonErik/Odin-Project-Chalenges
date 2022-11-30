def bubble_sort(list)
  p list
  sorted = false

  until sorted == true
    sorted = true
    (0...list.length - 1).each do |i|
      if list[i] > list[i + 1]
        sorted = false
        aux = list[i]
        list[i] = list[i + 1]
        list[i + 1] = aux
      end
    end
  end
  return list
end

p bubble_sort([4, 3, 78, 2, 0, 2])
