local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.sub(L0_0, -12) == "\\temp\\tl.vbs" then
  mp.set_mpattribute("Lua:FakePAVVBSFileName.A")
end
return mp.CLEAN
