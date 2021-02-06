
class Diary
attr_reader :entries
def initialize
  @entries = []
end

  def find_entries
    0
  end
end

class Entry
def initialize(date, body)

@date = date
@body = body

end

def add_entry(new_entry)
  @entries.push(new_entry)
end

def see_entries
end
end
