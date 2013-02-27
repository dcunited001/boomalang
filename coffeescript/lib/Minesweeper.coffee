
        
adjacent = (cell) ->
  [
    [cell[0]-1,cell[1]],
    [cell[0],cell[1]-1],
    [cell[0]+1,cell[1]],
    [cell[0],cell[1]+1],
    [cell[0]+1,cell[1]+1],
    [cell[0]-1,cell[1]-1],
    [cell[0]-1,cell[1]+1],
    [cell[0]+1,cell[1]-1],
  ]
 
play = (x, y) ->
  return "GAME OVER!!! YOU LOST!!!" if bombs.some (c) -> c[0] == x and c[1] == y
  neighboringBombs = intersection bombs, adjacent([x,y])
  neighboringBombs.length
 
intersection = (a, b) ->
  [a, b] = [b, a] if a.length > b.length
  value for value in a when b.some (c) -> c[0] == value[0] && c[1] == value[1]
