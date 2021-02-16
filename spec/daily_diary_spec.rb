require 'daily_diary'

 describe 'Diary' do
 it 'find all entries to the diary'do
 diary = Diary.new
 entry = Entry.new('date', 'body')
 diary.add_entry(entry)
 expect(diary.find_entries('date')).to match_array([entry])
#to check if the returned value matches the content of expected array (match_array):
end

  it 'finds the date that has the most entries'do
    diary = Diary.new
    entry = Entry.new('03.04.19', 'Sam')
    entry2 = Entry.new('02.04.19', 'Sara')
    entry3 = Entry.new('02.04.19', 'Joshua')
    entry4 = Entry.new('05.04.19', 'Pat')
    entry5 = Entry.new('05.04.19', 'Bob')
    entry6 = Entry.new('05.04.19', 'Maria')
    diary.add_entry(entry)
    diary.add_entry(entry2)
    diary.add_entry(entry3)
    diary.add_entry(entry4)
    diary.add_entry(entry5)
    diary.add_entry(entry6)
    expect(diary.find_date_with_more_entries).to eq('05.04.19')
  end
end

describe 'Entry'do
it 'add an entry to the diary'do
entry = Entry.new('date', 'body')
diary = Diary.new
diary.add_entry(entry)
expect(diary.entries.length).to eq(1)

end

end

#÷
#input       # output
# entry(string)  'new_entry' (string)

#As a user,
#So I know what was my busiest day,
#I can find out which date had the most entries.
