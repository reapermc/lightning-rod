from lightning_rod:api import Bossbar
from wicked_expressions:api import Var, Int


# creates bossbar on minecraft:load
bb = Bossbar()
bb1 = Bossbar()
bb2 = Bossbar()

# trying to overwrite the 'id' will throw an error 
# bb.id = 'foo'

# setting bossbar name
bb.name = 'gas prices'

# # setting bossbar color
bb.color = 'red'

# # setting bossbar style
bb.style = 'notched_20' 

# # showing bossbar for @s
bb.show()

# # hiding bossbar for @s
bb.hide()

# # global visibility ON
bb.visible = True

# # global visibility OFF
bb.visible = False

x = Var(Int)

bb.value = 10
bb.value = x

bb.max_value = 100
bb.max_value = x


print(bb)
print(bb.id)
print(bb.name)      # gas prices
print(bb.color)     # red
print(bb.style)     # notched_20
print(bb.value)
print(bb.max_value)
