local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_MEDIUM_RID
if L1_1 > L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L1_1)
  L1_1 = L2_2
  L2_2 = L1_1.find
  L2_2 = L2_2(L1_1, "\\windows\\system32\\", 1, true)
  if L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    if sysio.IsFileExists(L2_2) then
      bm.add_related_file(L2_2)
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
