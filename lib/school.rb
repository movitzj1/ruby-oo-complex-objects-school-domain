class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade_num)
        @roster[grade_num] ||= [] 
        @roster[grade_num] << name
    end

    def grade(grade_num)
        roster[grade_num]
    end

    def sort
        roster.transform_values(&:sort)
    end
end