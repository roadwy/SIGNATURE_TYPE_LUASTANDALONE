local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:find("%-%>.%d%d%d%d%d%d%d%d%d%d+/.%d%d%d%d%d%d%d%d%d%d+%.class$") ~= nil and mp.getfilesize() <= 2048 then
  mp.set_mpattribute("Lua:Java/MaliciousClassName")
end
return mp.INFECTED
