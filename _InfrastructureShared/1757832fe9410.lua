local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.match(L0_0, "appdata\\local\\temp\\bk[%a%d]+.tmp\\p[%a%d]+.exe") then
  mp.set_mpattribute("HSTR:Win32/PCHunter.B")
end
return mp.INFECTED
