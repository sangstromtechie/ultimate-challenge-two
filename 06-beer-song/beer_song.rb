class BeerSong

  def verse(start_bottle)
    bottles = start_bottle
    if (bottles-1) == 0
      "#{start_bottle} bottle of beer on the wall, #{start_bottle} bottle of beer.\n" +
          "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif bottles == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
          "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif (bottles-1) == 1
    "#{start_bottle} bottles of beer on the wall, #{start_bottle} bottles of beer.\n" +
        "Take one down and pass it around, #{start_bottle-1} bottle of beer on the wall.\n"
    else
      "#{start_bottle} bottles of beer on the wall, #{start_bottle} bottles of beer.\n" +
          "Take one down and pass it around, #{start_bottle-1} bottles of beer on the wall.\n"
    end
  end

  def verses(start_bottle, next_bottle)
    count = (start_bottle - next_bottle)

    count.times do
      BeerSong.new.verse(start_bottle) +
          "\n" +
          BeerSong.new.verse(next_bottle)
    end
  end
end