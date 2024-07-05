local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = tostring
L1_1 = L1_1(mp.readfile(0, L0_0))
L1_1 = string.lower(L1_1)
if string.find(L1_1, "j7pjsibhd9dztmzk7ddgdohxux5lws3aa9fqa9lxwkrk4omnzgqt6euej4i", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
