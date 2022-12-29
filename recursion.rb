# frozen_string_literal: true

def merge_sort(arr)
  return arr unless arr.length > 1

  mid_pt = arr.length / 2
  arr_a = merge_sort(arr[0..mid_pt - 1])
  arr_b = merge_sort(arr[mid_pt..])

  merge(arr_a, arr_b)
end

def merge(left_arr, right_arr, combined_arr = [])  
  i = 0
  j = 0
  while(i < left_arr.length && j < right_arr.length)
    if left_arr[i] < right_arr[j]
      combined_arr << left_arr[i]
      i += 1
    else
      combined_arr << right_arr[j]
      j += 1
    end
  end

  while(i < left_arr.length)
      combined_arr << left_arr[i]
      i += 1
    end
  
  while(j < right_arr.length)
    combined_arr << right_arr[j]
    j += 1
  end
  combined_arr
end

# Expect [1, 2, 3, 4, 5, 6, 7, 8]
p merge_sort([4, 8, 6, 2, 1, 7, 5, 3])
