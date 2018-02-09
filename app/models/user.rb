class User < ApplicationRecord
  def self.test
    raise "user_error"
  end


  def sum(a,b)
  end

  def key
  end

  def show_project(project)
    p "**********"
    puts project.name.inspect
    project.name
  end
end
