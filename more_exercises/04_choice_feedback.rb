@students = []

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Input the students."
  puts "2. Show the students."
  puts "3. Save the list of students."
  puts "4. Load a list of students."
  puts "9. Exit."
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you mean! Please try again."
  end
end

def show_students
  print_header
  print_names
  print_footer
end

def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit return twice!"
  name = STDIN.gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students!"
    name = STDIN.gets.chomp
  end
  @students
end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print_names
  @students.each do |student|
   puts "#{student[:name]} (#{student[:cohort]} cohort)"
 end
end

def print_footer
  puts "Overall, we have #{@students.count} great students."
end

def save_students
  puts "You have saved the list of students."
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(", ")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}."
  else
    puts "Sorry, #{filename} doesn't exist!"
    exit
  end
end

try_load_students
interactive_menu
