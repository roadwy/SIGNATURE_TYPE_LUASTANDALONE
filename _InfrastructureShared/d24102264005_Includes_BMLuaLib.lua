local L0_0, L1_1, L2_2
L2_2 = nri
L2_2 = L2_2.GetRawRequestBlob
L2_2 = L2_2()
if L2_2 == nil then
  return mp.CLEAN
end
L0_0 = string.match(L2_2, "%rsp%:Arguments%>%s*([A-Za-z0-9/%+=]+)")
if L0_0 == nil then
  return mp.CLEAN
end
L1_1 = MpCommon.Base64Decode(L0_0)
if L1_1 ~= nil and string.find(L1_1, "TargetTypeForDeserialization", 1, true) and string.find(L1_1, "system:Convert.FromBase64String", 1, true) and string.find(L1_1, "TVqQAAMAAAAE", 1, true) then
  reportHeaders({"Host", "User-Agent"})
  return mp.INFECTED
end
return mp.CLEAN
