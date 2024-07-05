local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetImagePathFromPid
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "\\cmd.exe"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = L1_1
  L2_2 = L1_1.find
  L4_4 = "\\powershell.exe"
  L2_2 = L2_2(L3_3, L4_4)
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = L2_2.image_path
  L3_3 = L3_3(L4_4)
  L4_4 = L3_3.find
  L4_4 = L4_4(L3_3, "\\java.exe")
  if not L4_4 then
    L4_4 = L3_3.find
    L4_4 = L4_4(L3_3, "\\javaw.exe")
  elseif L4_4 then
    L4_4 = mp
    L4_4 = L4_4.GetProcessCommandLine
    L4_4 = L4_4(L2_2.ppid)
    if L4_4 ~= nil then
      L4_4 = string.lower(L4_4)
      if L4_4:find("\\activemq\\", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
