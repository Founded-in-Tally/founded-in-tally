# Categories

categories = [
  'Community',
  'Funding',
  'Education & Training',
  'Incubation/Acceleration',
  'R & D',
  'Services',
  'Space',
  'Startup',
]

Category.create(categories.map{ |c| { name: c } })

# Stages

stages = [
  'Startup',
  'Idea',
  'Growth',
  'Mature',
]

Stage.create(stages.map{ |s| { name: s } })
