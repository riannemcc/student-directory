def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    puts "Enter cohort"
    cohort = gets.chomp
    if cohort == nil || cohort == ""
      cohort = :november
    end
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "____________"
end

def print(students)
  students_by_cohort = {}
  students.each do |person|
    cohort = person[:cohort]
    if students_by_cohort[cohort] == nil
     students_by_cohort[cohort] = []
    end
  students_by_cohort[cohort].push(person[:name])
end
  puts students_by_cohort.flatten
end

def print_footer(students)
  if students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
