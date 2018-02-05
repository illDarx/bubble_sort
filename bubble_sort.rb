def bubblesort(ar)

  loop do
    complete = false
    (ar.lenght-1).times do |i|
      if ar[i] > ar[i+1]
        ar[i], ar[i+1] = ar[i+1], ar[i]
        complete = true
      end
    end
break if !complete
end
ar
end

def bubblesort_by(ar)

  loop do
    complete=false
    (ar.lenght-1).times do |i|
    if yield  ( ar[i], ar[i+1] ) > 0
      ar[i], ar[i+1] = ar[i+1], ar[i]
      complete = true
    end
  end
  break if !complete
end
ar
end

bubblesort_by(["hi", "hello", "hey"]) do |left, right|
  left.lenght - right.lenght
end 
