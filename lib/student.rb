require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
    # def save
    #     sql = "INSERT INTO students (name, grade) VALUES (?, ?)"
    #      binding.pry
    #      DB[:conn].execute(sql, self.name, self.grade)
    #     @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    #   end

    self.column_names.each do |col_name|
        attr_accessor col_name.to_sym
      end
end


