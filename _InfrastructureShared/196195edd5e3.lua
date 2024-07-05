local L0_0
L0_0 = pehdr
L0_0 = L0_0.Subsystem
if L0_0 ~= 1 then
  L0_0 = pehdr
  L0_0 = L0_0.DataDirectory
  L0_0 = L0_0[1]
  L0_0 = L0_0.Size
  if L0_0 < 256 then
    L0_0 = string
    L0_0 = L0_0.lower
    L0_0 = L0_0(mp.getfilename())
    if L0_0 ~= nil and L0_0:find("\\system", 1, true) == nil and L0_0:find("program files", 1, true) == nil then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
