local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.sub(L0_0, -9) == "setup.exe" then
  mp.set_mpattribute("HSTR:Win32/BrowseFox.V!Setup")
end
mp.set_mpattribute("PUA:Block:BrowseFox")
return mp.INFECTED
