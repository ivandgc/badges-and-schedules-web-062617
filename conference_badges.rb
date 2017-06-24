def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each_with_index do |name, index|
    badges[index] = badge_maker(name)
  end
  badges
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index do |name, index|
    room_assignments[index] = "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  room_assignments
end

def printer(attendees)
  array = batch_badge_creator(attendees)
  array.each_index do |index|
    puts array[index]
  end

  array2 = assign_rooms(attendees)
  array2.each_index do |index|
    puts array2[index]
  end

end
