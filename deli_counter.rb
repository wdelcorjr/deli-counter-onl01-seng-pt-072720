katz_deli = []

#updates line when someone enters or leaves
def line(katz_deli)
    if katz_deli.size == 0
        puts "The line is currently empty."
    elsif katz_deli.size > 0
        num_line = []
        i = 0
            while i < katz_deli.size
            num_line.push("#{i + 1}. #{katz_deli[i]}")
            i += 1
        end
        puts "The line is currently: #{num_line.join(" ")}"
    end
end

#adds person to end of line
def take_a_number(katz_deli, name)
    puts "Welcome, #{name}. You are number #{katz_deli.size + 1} in line."
    katz_deli.push(name)
end

#calls out now serving and removes from front of line and moves everyone up.
def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        ur_up = katz_deli.shift
        puts "Currently serving #{ur_up}."
    end
end
