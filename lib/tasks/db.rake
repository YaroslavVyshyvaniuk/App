module Populator
  # Builds multiple Populator::Record instances and saves them to the database
  class Factory
    def rows_sql_arr
      @records.map do |record|
        quoted_attributes = record.attribute_values.map { |v| @model_class.connection.quote(v) }
        "(#{quoted_attributes.join(', ')})"
      end
    end
  end
end

require 'faker'


namespace :db do
  desc "populates database"
  task populate: :environment do
    #Book.delete_all
    #  Author.delete_all
      Book.populate(15) do |book|
        book.name=Faker::Book.title;
        book.pages=Faker::Number.between(64, 1384)
        book.genre=Faker::Book.genre;
        book.price=Faker::Number.between(80,650)
	book.author_id=Faker::Number.between(1,5)
      end
      i=1
      Author.populate(5) do |author|
        author.name=Faker::Name.first_name;
        author.age=Faker::Number.between(10, 90)
        author.surname=Faker::Name.last_name;
	author.publisher_id=i
	i+=1
      end
    end
  end

