local L0_0, L1_1, L2_2
L0_0 = tostring(headerpage)
if L0_0 == nil then
  return mp.CLEAN
end
L1_1 = string.match(L0_0, "%/Command%/Base64%/(.*)\"?'?}")
if L1_1 == nil then
  return mp.CLEAN
end
L2_2 = MpCommon.Base64Decode(L1_1)
if L2_2 ~= nil and (string.find(L2_2, "wget", 1, true) or string.find(L2_2, "powershell", 1, true) or string.find(L2_2, "python", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
