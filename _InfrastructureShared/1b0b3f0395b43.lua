local L0_0, L1_1, L2_2, L3_3
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = L1_1.integrity_level
L3_3 = MpCommon
L3_3 = L3_3.SECURITY_MANDATORY_SYSTEM_RID
if L2_2 < L3_3 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.utf8p1
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[4]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = this_sigattrlog
      L3_3 = L3_3[5]
      L3_3 = L3_3.utf8p1
      L2_2 = L2_2(L3_3)
      L0_0 = L2_2
    end
  end
end
if L0_0 ~= nil then
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, -4)
  L3_3 = "|.asp|aspx|ashx|asmx|"
  if string.find(L3_3, L2_2, 1, true) then
    if sysio.IsFileExists(L0_0) then
      bm.add_related_file(L0_0)
    end
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
