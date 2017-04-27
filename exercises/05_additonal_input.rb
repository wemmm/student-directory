
def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit return twice!"
  students = []
  name = gets.chomp
  while !name.empty? do
  puts "And where are they from?"
  home = gets.chomp.capitalize
      puts "And what is their favourite hobby?"
      hobby = gets.chomp.downcase
      students << {name: name, cohort: :November, hobby: hobby, home: home}
      puts "Now we have #{students.count} students!"
      puts "Add another name or hit return to view students!"
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
   puts "#{student[:name]}, from #{student[:home]}, who enjoys #{student[:hobby]}. (#{student[:cohort]} cohort)"
 end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

students = input_students
print_header
print_names(students)
print_footer(students)
