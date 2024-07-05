local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L0_0 = L1_1[1]
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L0_0 = L1_1[2]
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0.utf8p1
L3_3 = "imagename:(.+);targetprocessppid:(%d+):"
L2_2 = L1_1(L2_2, L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L4_4 = L4_4(bm.get_imagepath())
L3_3 = L3_3(L4_4, L4_4(bm.get_imagepath()))
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.GetPPidFromPid
L4_4 = L4_4(L2_2)
bm.add_related_process(L4_4)
if sysio.IsFileExists(L3_3) and not mp.IsKnownFriendlyFile(L3_3, true, false) then
  bm.add_related_file(L3_3)
  bm.add_related_string("SUSPICIOUS PATH: ", L1_1, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
