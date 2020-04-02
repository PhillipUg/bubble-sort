def bubble_sort(arr)
  i = arr.length
  (0..i).each do |k|
    ((k + 1)..i - 1).each do |j|
      next unless arr[k] > arr[j]

      placeholder = arr[j]
      arr[j] = arr[k]
      arr[k] = placeholder
    end
  end
  arr
end

def bubble_sort_by(arr)
  i = arr.length
  (0..i).each do |k|
    ((k + 1)..i - 1).each do |j|
      next unless yield(arr[k], arr[j]).positive?

      placeholder = arr[j]
      arr[j] = arr[k]
      arr[k] = placeholder
    end
  end
  arr
end
