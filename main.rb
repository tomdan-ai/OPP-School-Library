require_relative 'app'

def handle_menu_choice(choice, app)
  menu_options = {
    1 => { description: 'List all books', action: -> { app.list_books } },
    2 => { description: 'List all people', action: -> { app.list_people } },
    3 => { description: 'Create a teacher', action: -> { app.create_teacher } },
    4 => { description: 'Create a student', action: -> { app.create_student } },
    5 => { description: 'Create a book', action: -> { app.create_book } },
    6 => { description: 'Create a rental', action: -> { app.create_rental } },
    7 => { description: 'List rentals for a person', action: -> { app.list_rentals_for_person } },
    8 => { description: 'Quit', action: -> { exit_app } }
  }

  option = menu_options[choice]
  if option
    puts "\n========== #{option[:description]} =========="
    option[:action].call
  else
    puts 'Invalid choice. Please try again.'
  end
end

def exit_app
  puts 'Exiting the app. Goodbye!'
  exit
end

def main
  app = App.new

  loop do
    puts "\n========== Library Console App =========="
    puts '+--------------------------------------+'
    puts '|              MAIN MENU               |'
    puts '+--------------------------------------+'
    puts '| 1. List all books                    |'
    puts '| 2. List all people                   |'
    puts '| 3. Create a teacher                  |'
    puts '| 4. Create a student                  |'
    puts '| 5. Create a book                     |'
    puts '| 6. Create a rental                   |'
    puts '| 7. List rentals for a person         |'
    puts '| 8. Quit                              |'
    puts '+--------------------------------------+'
    print 'Enter option: '

    choice = gets.chomp.to_i

    handle_menu_choice(choice, app)
  end
end

main
