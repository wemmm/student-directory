
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
   puts "#{student[:name]} (#{student[:cohort]} cohort)"
 end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

students = input_students
print_header
  if students.length == 0
    print "There are no students!"
  else
    print_names(students)
print_footer(students)
end
