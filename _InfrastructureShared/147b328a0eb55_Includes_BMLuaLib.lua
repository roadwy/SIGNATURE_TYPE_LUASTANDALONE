local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = "(?:rundll32|regsvr32)(?:.exe)?\\s+\\w:\\\\programdata\\\\[^\\\\]+\\.\\w{2,4}"
L2_2 = false
L2_2, _ = MpCommon.StringRegExpSearch(L1_1, L0_0)
if L2_2 then
  bm_AddRelatedFileFromCommandLine(L0_0, nil, nil, 2)
  return mp.INFECTED
end
return mp.CLEAN
