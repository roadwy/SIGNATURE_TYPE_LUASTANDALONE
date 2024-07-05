local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L3_3 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\powershell.exe"
L1_1 = L1_1(L2_2, L3_3, 1, true)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "rundll32"
  L1_1 = L1_1(L2_2, L3_3, 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\\wscript.exe"
    L1_1 = L1_1(L2_2, L3_3, 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L3_3 = "\\cscript.exe"
      L1_1 = L1_1(L2_2, L3_3, 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L3_3 = "\\mshta"
        L1_1 = L1_1(L2_2, L3_3, 1, true)
      end
    end
  end
elseif L1_1 then
  L1_1 = pcall
  L2_2 = bm
  L2_2 = L2_2.get_current_process_startup_info
  L2_2 = L1_1(L2_2)
  if L1_1 and L2_2 ~= nil then
    L3_3 = L2_2.ppid
    if MpCommon.QueryPersistContextNoPath("amsidetct", L3_3) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
