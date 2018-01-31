require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(id = nil, name, grade)
    @id = id
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      )
      SQL

      DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = "DROP TABLE students"

    DB[:conn].execute(sql)
  end

  def save

    DB[:conn].execute(sql)
  end

  def self.create

    DB[:conn].execute(sql)
  end

  def self.new_from_db

    DB[:conn].execute(sql)
  end

  def self.find_by_name

    DB[:conn].execute(sql)
  end

  def update
  end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


end
