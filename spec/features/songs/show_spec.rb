require 'rails_helper'

RSpec.describe 'the songs show page', type: :feature do  
  # As a user,
  # when I visit /songs/1 (where 1 is the id of a song in my database)
  # Then I see that song's title and artist
  # And I do not see any of the other songs in my database

  it 'displays the song title' do
    artist = Artist.create!(name: 'Carly Rae Jepson')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 23455)
    song_2 = artist.songs.create!(title: "Call me Maybe", length: 210, play_count: 21233455)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the name of artist for the song' do
    artist = Artist.create!(name: 'Carly Rae Jepson')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 23455)
    song_2 = artist.songs.create!(title: "Call me Maybe", length: 210, play_count: 21233455)

    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end

  it 'displays song length' do
    artist = Artist.create!(name: 'Carly Rae Jepson')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 23455)
    song_2 = artist.songs.create!(title: "Call me Maybe", length: 210, play_count: 21233455)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.length)
    expect(page).to_not have_content(song_2.length)

  end

  it 'displays song play count' do
    artist = Artist.create!(name: 'Carly Rae Jepson')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 23455)
    song_2 = artist.songs.create!(title: "Call me Maybe", length: 210, play_count: 21233455)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.play_count)
    expect(page).to_not have_content(song_2.play_count)

  end
end