def remove_element(nums, val)
    return 0 if nums.empty?
  
    left = 0
    (0...nums.size).each do |right|
      if nums[right] != val
        nums[left] = nums[right]
        left += 1
      end
    end
  
    left
  end

# Exemplo de uso
nums = [3, 2, 2, 3, 4, 5, 6, 33, 66, 99, 103]
val = 3

new_length = remove_element(nums, val)

puts "Novo array após remover os elementos iguais a #{val}: #{nums[0...new_length]}"