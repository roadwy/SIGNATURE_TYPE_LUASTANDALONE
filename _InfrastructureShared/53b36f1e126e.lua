local L0_0, L1_1, L2_2
L1_1 = "base64_plist_creation"
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  L2_2 = L2_2.match
  L2_2 = L2_2(L2_2, "([^/]+)$")
  L0_0 = L2_2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p1
    L2_2 = L2_2.match
    L2_2 = L2_2(L2_2, "([^/]+)$")
    L0_0 = L2_2
  end
end
if L0_0 ~= nil and L0_0 ~= "" then
  L2_2 = MpCommon
  L2_2 = L2_2.GetPersistContextCountNoPath
  L2_2 = L2_2(L1_1)
  if L2_2 > 0 then
    L2_2 = MpCommon
    L2_2 = L2_2.AppendPersistContextNoPath
    L2_2(L1_1, L0_0, 3600)
  else
    L2_2 = {}
    L2_2[1] = L0_0
    MpCommon.SetPersistContextNoPath(L1_1, L2_2, 3600)
  end
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
