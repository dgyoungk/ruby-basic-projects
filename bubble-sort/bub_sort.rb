# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology

data = [4,3,78,2,0,2]

def bubble(data)
  for x in 0..data.length - 1
    for y in 0..data.length - 1
      if data[y + 1] != nil && data[y] > data[y + 1]
        temp = data[y + 1]
        data[y + 1] = data[y]
        data[y] = temp
      end
    end
  end
  data
end


p bubble(data)