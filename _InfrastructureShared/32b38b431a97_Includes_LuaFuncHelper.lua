local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    _, L0_0 = MpCommon.StringRegExpSearch("(?i)binPath=[\\s'\\\"\\\\]+(.*\\.\\w+)", L1_1)
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = AppendToRollingQueue
L1_1("NewlyRegisteredServices", L0_0, true, 3600, 20)
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
