local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = L1_1.find
  L2_2 = L2_2(L1_1, "\\w3wp.exe")
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.GetProcessCommandLine
    L2_2 = L2_2(L0_0.ppid)
    if L2_2 ~= nil then
      L2_2 = string.lower(L2_2)
      if L2_2:find("moveitdmz", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
