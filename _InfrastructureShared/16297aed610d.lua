local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "InEmail"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetNormalizedScript
L1_1 = L1_1(L0_0.is_header)
L1_1 = L1_1.lower
L1_1 = L1_1(L1_1)
if L1_1 == nil or #L1_1 < 600 then
  return mp.CLEAN
end
if MpCommon.StringRegExpSearch("\\+([\\w]+)\\((?:\\d+|0x[\\da-f]+)\\)((\\+\\1\\((?:\\d+|0x[\\da-f]+)\\)|\\+'[\\w\\/\\+]+')+)", L1_1) == true and 600 < #MpCommon.StringRegExpSearch("\\+([\\w]+)\\((?:\\d+|0x[\\da-f]+)\\)((\\+\\1\\((?:\\d+|0x[\\da-f]+)\\)|\\+'[\\w\\/\\+]+')+)", L1_1) then
  return mp.INFECTED
end
return mp.CLEAN
