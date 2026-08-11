events = [
  {
    name: "Brooklyn Makers Market",
    time: "Aug 15, 2026, 11:00 AM",
    location: "Williamsburg",
    description: "A weekend market featuring handmade crafts, artwork, jewelry, and food from independent Brooklyn creators."
  },
  {
    name: "Central Park Stargazing Night",
    time: "Aug 16, 2026, 9:00 PM",
    location: "Central Park",
    description: "Join amateur astronomers for an evening of stargazing and learning about constellations visible over New York City."
  },
  {
    name: "Queens Street Food Festival",
    time: "Aug 22, 2026, 12:00 PM",
    location: "Flushing Meadows–Corona Park",
    description: "Sample dishes from restaurants and food vendors representing cuisines from around the world."
  },
  {
    name: "Indie Film Showcase",
    time: "Aug 23, 2026, 6:30 PM",
    location: "Lower East Side",
    description: "A screening night featuring short independent films from emerging New York filmmakers."
  },
  {
    name: "Manhattan Photography Walk",
    time: "Aug 29, 2026, 10:00 AM",
    location: "Washington Square Park",
    description: "A guided photography walk through Greenwich Village, focusing on architecture, street scenes, and hidden landmarks."
  },
  {
    name: "Rooftop Poetry Night",
    time: "Sep 4, 2026, 7:30 PM",
    location: "Midtown Manhattan",
    description: "Local poets and writers take the stage for an evening of readings, spoken word, and open-mic performances"
  },
  {
    name: "East River Community Run",
    time: "Sep 6, 2026, 8:00 AM",
    location: "East River Park",
    description: "A casual 5K community run along the East River, open to runners and walkers of all experience levels."
  },
  {
    name: "Future of Tech NYC Meetup",
    time: "Sep 10, 2026, 6:00 PM",
    location: "Flatiron District",
    description: "A networking event for developers, designers, and entrepreneurs discussing emerging technologies and New York's startup scene."
  },
  {
    name: "Autumn Arts in the Park",
    time: "Sep 19, 2026, 1:00 PM",
    location: "Prospect Park",
    description: "An outdoor afternoon of live music, painting demonstrations, theater performances, and activities for families."
  }
]

events.each do |e|
  Event.find_or_create_by!(name: e[:name]) do |event|
    event.time = e[:time]
    event.location = e[:location]
    event.description = e[:description]
    event.creator_id = 1
  end
end
