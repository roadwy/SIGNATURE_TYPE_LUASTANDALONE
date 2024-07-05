local L0_0, L1_1, L2_2, L3_3, L4_4
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p1
  end
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L2_2 = L3_3.utf8p1
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L1_1 = L3_3.ppid
  end
end
if L2_2 ~= nil and L0_0 ~= nil then
  L3_3, L4_4 = nil, nil
  L3_3 = mp.ContextualExpandEnvironmentVariables(L0_0)
  L4_4 = mp.ContextualExpandEnvironmentVariables(L2_2)
  if sysio.IsFileExists(L3_3) and sysio.IsFileExists(L4_4) and mp.IsKnownFriendlyFile(L3_3, true, false) and not mp.IsKnownFriendlyFile(L4_4, true, false) then
    if string.find(L4_4, "\\system32\\mrt.exe", -17, true) or string.find(L4_4, "\\asep_inv.exe", -13, true) or string.find(L4_4, "\\mpsigstub.exe", -14, true) then
      return mp.CLEAN
    end
    bm.add_related_file(L4_4)
    bm.request_SMS(L1_1, "l")
    bm.add_action("SingleProcessScan", 100)
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
