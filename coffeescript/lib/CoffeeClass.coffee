# coffeescript classes

class Foo
  #constructors can be blank
  contstructor: (@param, @param2) ->
  @staticVar: "zap"
  @classVar: "classy"
  anInstanceVar: "for instance"
  instaFunc: (p1,p2) ->
    #hmmm how to call class vars?
    "Boom! Instafunk: #{@staticVar}"
  @staticFunc: ->
    "ZAP! #{@staticVar}"

# inheritance
class Bar extends Foo
  constructor: (@param, @param2) ->
    @param = "bar #{@param}"
    @param2 = "BAR #{@param2}"


# references
# how to export for use in other files:
#   http://stackoverflow.com/questions/9465509/node-coffeescript-class-files-and-inheritance

