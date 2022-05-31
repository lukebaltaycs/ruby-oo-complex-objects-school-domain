# code here!

class School

    def initialize(name)
        @name=name
        @roster={}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end 

    def grade(grade)
        @roster[grade]
    end

    def sort
        #sorted_roster = []
        #@roster.each do |grade|
        #    sorted_roster[grade] = grade.sort
        #end
        #sorted_roster
        sorted_roster = @roster
        sorted_roster.each do |grade, name|
            sorted_roster[grade].sort!
        end
        return sorted_roster
    end

end