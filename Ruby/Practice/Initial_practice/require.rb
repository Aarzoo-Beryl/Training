$LOAD_PATH <<'.'

require 'trig_module'
require 'moral'

y= Trig.sin(Trig::PI/4)
z= Moral.sin(Moral::VERY_BAD)


#both modules have same function name but this ambiguity is removed as they are contained in two different modules