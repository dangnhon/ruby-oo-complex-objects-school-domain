# code here!
require 'pry'

class School 

    attr_accessor :roster
    def initialize(name)
        @name = name 
        @roster = {} 
    end 

    def name 
        @name
    end  


    def add_student(student, grade)
        @roster[grade] ||= [] 
        @roster[grade] << student
    end 

    def grade(grade_number)
        roster.each do |key, value| 
            if key ==  grade_number
              
               return value
            end 
        end 

        # if grade == @roster[grade]
        #     @roster[grade]
        #end
    end 

    def sort
        roster.each do |grade, student|
            roster[grade] = student.sort
        end 
        roster
    end 
  


end 
