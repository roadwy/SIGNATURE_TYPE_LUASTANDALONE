local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
L1_1 = string
L1_1 = L1_1.len
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 < 4 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L1_1 = L1_1(L2_2, -4)
L2_2 = L1_1
L1_1 = L1_1.match
L1_1 = L1_1(L2_2, "%.(%w+)$")
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = IsSuspiciousFileExt
L2_2 = L2_2(L1_1)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L2_2("MpDisableCaching")
  L2_2 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
  if not MpCommon.QueryPersistContext(mp.getfilename(), L2_2) then
    MpCommon.AppendPersistContext(mp.getfilename(), L2_2, 0)
  end
  mp.SetHipsRule("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
  return mp.BLOCKACCESS
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
