local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L3_3 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "fsprocsvc.exe"
  L1_1 = L1_1(L2_2, L3_3, 1, true)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = pcall
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L1_1(L2_2)
if L1_1 and L2_2 ~= nil then
  L3_3 = L2_2.ppid
  if L3_3 ~= nil and IsTechniqueObservedForPid(L3_3, "T1036") then
    TrackPidAndTechniqueBM("BM", "T1059", "masqamsi")
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
