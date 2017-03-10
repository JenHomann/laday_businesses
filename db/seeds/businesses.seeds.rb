if Business.count == 0
  puts 'Creating Agape Red'

  Business.find_or_create_by!(name: 'Agape Red')
else
  puts 'Agape Red already created'
end