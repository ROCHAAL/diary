require 'daily_diary'

 describe 'Diary' do
 it 'find all entries to the diary'do
 diary = Diary.new
 entry = Entry.new('date', 'body')
 diary.add_entry(entry)
 diary.find_entries('body')
 expect(diary.find_entries('body')).to eq(1)

end
end

describe 'Entry'do
it 'add an entry to the diary'do
entry = Entry.new('date', 'body')
diary = Diary.new
diary.add_entry(entry)
expect(diary.entries.length).to eq(1)

end
 it 'can see the entries 'do
 entry = Entry.new('date', 'body')
diary = Diary.new

 entry.see_entries
expect(diary.entries[0]).to eq('date', 'body')
 end
end


#input       # output
# entry(string)  'new_entry' (string)
