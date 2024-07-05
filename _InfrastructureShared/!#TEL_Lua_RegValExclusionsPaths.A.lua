local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
if (L1_1:find("hklm\\software\\microsoft\\windows defender\\exclusions\\paths\\", 1, true) or L1_1:find("hklm\\software\\microsoft\\microsoft antimalware\\exclusions\\paths\\", 1, true)) and string.sub(L1_1, -1) == "\\" and string.sub(L1_1, -2) ~= ":\\" and string.find(L0_0, "WTT 2.2\\Client\\", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
