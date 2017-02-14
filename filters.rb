# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program


def find(id)
  @candidates.each do |findingId|
     if findingId[:id] == id
      return findingId
    end
  end
  nil
end


def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def qualified_candidates(candidates)
  candidates.select {
    |candidate|
    meets_qualification?(candidate)
  }
end

def meets_qualification?(candidate)
  github?(candidate) &&
  language?(candidate) &&
  experienced?(candidate) &&
  application?(candidate) &&
  age?(candidate)
end

def github?(candidate)
  candidate[:github_points] >= 100
end

def language?(candidates)
  candidates[:languages].include?("Python") || candidates[:languages].include?("Ruby")
end

def application?(candidate)
  candidate[:date_applied] = 15.days.ago.to_date
end

def age?(candidate)
  candidate[:age] > 17
end


