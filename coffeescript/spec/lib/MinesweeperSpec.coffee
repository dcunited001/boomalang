# sample coffeescript spec:
#   https://gist.github.com/mattflo/3984330#file-minesweeper-spec-coffee-L1

# node, jasmine, coffeescript, and rake installed/configured using 
# steps outlined at this website:
# http://brizzled.clapper.org/id/117/index.html

bombs = []
describe "minesweeper bomb cells", ->
  beforeEach ->
    bombs = [[0,0]]

  it "explodes", ->
    expect(play(0,0)).toContain "YOU LOST"

  it "shoud have one nighboring bombs", ->
    expect(play(0,1)).toEqual 1

  it "shouldn't have any nighboring bombs", ->
    expect(play(0,2)).toEqual 0
 
describe "adjacent cells", ->
  beforeEach ->
    @neighbors = adjacent([0,0])

  it "looks in the negative x direction", ->
    expect(@neighbors).toContain [-1,0]

  it "looks in the negative y direction", ->
    expect(@neighbors).toContain [0,-1]

  it "looks in the positive x direction", ->
    expect(@neighbors).toContain [1,0]

  it "looks in the positive y direction", ->
    expect(@neighbors).toContain [0,1]

  it "looks in the positive y, positive x direction", ->
    expect(@neighbors).toContain [1,1]

  it "looks in the negative y, negative x direction", ->
    expect(@neighbors).toContain [-1,-1]

  it "looks in the positive y, negative x direction", ->
    expect(@neighbors).toContain [-1,1]

  it "looks in the negative y, positive x direction", ->
    expect(@neighbors).toContain [1,-1]
