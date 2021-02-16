
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

    def find_date_with_more_entries
      dates_only = []
      # @entries.select { |date| date.body }.max.date
      @entries.each do |x|
        dates_only << x.date
      end
      dates_only.max_by do |y|
        dates_only.count(y)
      end
    end


      # def find_date_with_more_entries
      #   selected_entries = @entries.select { |date| date.body }
      #   max_entry = selected_entries.max
      #   date = max_entry.date
      #



    # selected_entries = @entries.select { |date| date.body }
    # p "selected_entries"
    # p selected_entries
    # max = selected_entries.max
    # p "max"
    # p max
    # date = max.date
    # p "date"
    # p date

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
