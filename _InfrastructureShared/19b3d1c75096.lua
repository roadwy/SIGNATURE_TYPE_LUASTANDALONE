local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.wp2
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0:lower(), "\\amazon\\amazon assistant\\", 1, true)
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L1_1 = L1_1(L0_0)
    MpCommon.SetPersistContextNoPath("mshta_start", L1_1, 3)
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
