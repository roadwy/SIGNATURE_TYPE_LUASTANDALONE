local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if string.sub(L0_0, -10) == "->(Upxw64)" then
  mp.set_mpattribute("HSTR:HackTool:Win64/MikatzUPX")
end
return mp.INFECTED
