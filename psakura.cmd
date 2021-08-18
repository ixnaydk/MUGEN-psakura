[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
name = "shinkuuhadou_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "shinkuuhadou_y"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "shoryuken_x"
command = ~F,D,DF,x
time = 20

[Command]
name = "shoryuken_y"
command = ~F,D,DF,y
time = 20

[Command]
name = "hadouken_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "hadouken_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "tatsumaki_a"
command = ~D,DB,B,a
time = 20

[Command]
name = "tatsumaki_b"
command = ~D,DB,B,b
time = 20

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]
[State -1, Shinkuu Hadouken]
type = ChangeState
value = 3000
triggerall = (command = "shinkuuhadou_x"||command = "shinkuuhadou_y")
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Shoryuken]
type = ChangeState
value = 1010
triggerall = (Command = "shoryuken_x"||Command = "shoryuken_y")
triggerall = StateType != A
trigger1 = Ctrl

[State -1, Hadouken]
type = ChangeState
value = 1000
triggerall = (command = "hadouken_x"||command = "hadouken_y")
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Tatsumaki Senpuu Kyaku]
type = ChangeState
value = 1020
triggerall = (Command="tatsumaki_a"||Command="tatsumaki_b")
triggerall = StateType != A
trigger1 = Ctrl

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, Stand Strong Punch]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Kick]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Standing Strong Kick]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Strong Punch]
type = ChangeState
value = 305
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Crouching Light Kick]
type = ChangeState
value = 310
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Crouching Strong Kick]
type = ChangeState
value = 315
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 405
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 410
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 415
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
