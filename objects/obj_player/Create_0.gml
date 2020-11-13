old_x = x
old_y = y
smashed = false
smashdebounce = false
movebonus = 0
breakbonus = 0
autosmash = false

controls = {}
controls.left = ord("A")
controls.right = ord("D")
controls.up = ord("W")
controls.down = ord("S")
controls.smash = ord("X")

enum states {
	normal,
	smash,
}
state = states.normal

global.points = 0