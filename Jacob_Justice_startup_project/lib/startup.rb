require "employee"

class Startup
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def name()
        @name
    end

    def funding()
        @funding
    end

    def salaries()
        @salaries
    end

    def employees()
        @employees
    end

    def valid_title?(title)
        if @salaries.include?(title)
            return true
        else
            return false
        end
    end

    def >(otherStart)
        return self.funding > otherStart.funding
    end

    def hire (name, title)
        if valid_title?(title)
            newEmp = Employee.new(name, title)
            @employees << newEmp
        else
            raise ArgumentError.new "Title invalid"
        end
    end

    def size ()
        @employees.length
    end

    def pay_employee(employee)
        if @funding >= @salaries[employee.title]
            employee.pay(@salaries[employee.title])
            @funding -= @salaries[employee.title]
        else
            raise ArgumentError.new "Not enough funding"
        end
    end

    def payday()
        @employees.each do |emp|
            pay_employee(emp)
        end
    end

    def average_salary()
        total = 0
        @employees.each do |emp|
            total += @salaries[emp.title]
        end
        return (total * 1.0)/@employees.length
    end

    def close()
        @employees = []
        @funding = 0
    end

    def acquire(otherStart)
        @funding += otherStart.funding
        @salaries = otherStart.salaries.merge(@salaries)
        @employees += otherStart.employees
        otherStart.close
    end
end
