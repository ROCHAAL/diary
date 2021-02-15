
class Diary
attr_reader :entries, :date, :body

def initialize
  @entries = []
end

    def find_entries(input_date)

      @entries.select { |entry|  entry.date == input_date }
    end

  def add_entry(new_entry)
    @entries.push(new_entry)
  end

  def find_dates_with_more_entries
    @entries.select { |date| date.body }.max.date

  end
end



class Entry

attr_reader :date, :body, :entries
def initialize(date, body)

@date = date
@body = body

end



#def see_entries
#  @entries
#end
end
