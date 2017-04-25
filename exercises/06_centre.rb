
def input_students
  puts "Please enter the names of the students.".center(75)
  puts "To finish, just hit return twice!".center(75)
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students!".center(75)
    name = gets.chomp
  end
  students
end

def print_header
  puts "The Students of Villains Academy".center(75)
  puts "-------------".center(75)
end

def print_names(students)
  students.each do |student|
   puts "#{student[:name]} (#{student[:cohort]} cohort)".center(75)
 end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students.".center(75)
end

students = input_students
print_header
print_names(students)
print_footer(students)
