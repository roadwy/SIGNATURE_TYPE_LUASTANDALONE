local L0_0
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 15000 then
  return mp.CLEAN
end
if L0_0 > 500000 then
  return mp.CLEAN
end
mp.readprotection(false)
if mp.readfile(0, L0_0):match("(\255+)") == nil then
  return mp.CLEAN
end
if L0_0 ~= #mp.readfile(0, L0_0):match("(\255+)") then
  return mp.CLEAN
end
return mp.INFECTED
