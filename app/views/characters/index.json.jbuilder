json.array! @characters.each do |character|
  json.partial! 'character.json.jbuilder', character: character
end
