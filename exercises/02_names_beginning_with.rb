
def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit return twice!"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students!"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print_names(students)
  students.each do |student|
    if student[:name].start_with? "H"
   puts "#{student[:name]} (#{student[:cohort]} cohort)"
 end
 end
end

def print_footer(students)
    filtered_students = students.select! { |student| student[:name].start_with? "H" }
  puts "Overall, we have #{filtered_students.count} whose names begin with H."
end

students = input_students
print_header
print_names(students)
print_footer(students)
