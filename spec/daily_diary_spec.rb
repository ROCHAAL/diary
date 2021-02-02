require 'daily_diary'

 describe 'Diary'do
it 'find the all entries for a particular date.'do
diary = Diary.new
diary.find_entries
expect(diary.find_entries).to eq(0)
end
end



describe'Entry'do
it ' add a new entry to the diary'do
entry = Entry.new('date', 'body')
diary = Diary.new
entry.add_entry(diary)
expect(diary.entries.length).to eq(1)
expect(entry.entries[0].date).to eq('date')
expect(diary.entries[0].body).to eq('body')
end

end
