local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, "\\java.exe")
  if not L2_2 then
    L3_3 = L1_1
    L2_2 = L1_1.find
    L2_2 = L2_2(L3_3, "\\javaw.exe")
  elseif L2_2 then
    L3_3 = L1_1
    L2_2 = L1_1.find
    L2_2 = L2_2(L3_3, "manageengine", 1, true)
    if not L2_2 then
      L3_3 = L1_1
      L2_2 = L1_1.find
      L2_2 = L2_2(L3_3, "servicedesk", 1, true)
    elseif L2_2 then
      L2_2 = mp
      L2_2 = L2_2.GetScannedPPID
      L2_2 = L2_2()
      if L2_2 == "" or L2_2 == nil then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = mp
      L3_3 = L3_3.GetProcessCommandLine
      L3_3 = L3_3(L2_2)
      if L3_3 == nil then
        return mp.CLEAN
      end
      L3_3 = string.lower(L3_3)
      if string.find(L3_3, "cmd.exe /c", 1, true) then
        return mp.CLEAN
      end
      if string.find(L3_3, "powershell.exe", 1, true) or string.find(L3_3, "powershell_ise.exe", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
