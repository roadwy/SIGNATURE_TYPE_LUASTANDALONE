local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.sub(L0_0, -22) == "\\updatetask\\vmhost.exe" then
  mp.set_mpattribute("Lua:Vmhost.A")
end
return mp.CLEAN
