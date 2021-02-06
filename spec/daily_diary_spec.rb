require 'daily_diary'

 describe 'Diary' do
 it 'find all entries to the diary'do
 diary = Diary.new
 diary.find_entries
 expect(diary.find_entries).to eq(0)

end

describe 'Entry'do
it 'add an entry to the diary'do
entry = Entry.new('date', 'body')
diary = Diary.new
entry.add_entry(diary)
expect(diary.entries.length).to eq(1)
expect
end
end
end


#input       # output
# entry(string)  'new_entry' (string)
