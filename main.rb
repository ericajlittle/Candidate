# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

# pp @candidates


# pp qualified_candidates(@candidates)

# pp experienced?(@candidates[0])

pp ordered_by_qualifications(@candidates)