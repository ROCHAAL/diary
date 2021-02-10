require 'daily_diary'

 describe 'Diary' do
 it 'find all entries to the diary'do
 diary = Diary.new
 entry = Entry.new('date', 'body')
 diary.add_entry(entry)
 expect(diary.find_entries('date')).to match_array(Entry)
#to check if the returned value matches the content of expected array (match_array):
end
# it 'can see the entries 'do
# diary = Diary.new
# entry = Entry.new('date', 'body')
# diary.add_entry(entry)
# expect(diary.entries[0]).to eq(1)
# expect(diary.see_entries).to eq(1)
# end
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
