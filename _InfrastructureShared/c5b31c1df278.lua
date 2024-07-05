local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "3b576869-a4ec-4529-8536-b80a7769e899"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = "enghipscpy:blockaccess:3b576869-a4ec-4529-8536-b80a7769e899"
L1_1 = ""
L2_2 = ""
if this_sigattrlog[5].matched then
  L1_1 = this_sigattrlog[5].utf8p1
  L2_2 = this_sigattrlog[5].utf8p2
  if L1_1 == nil or L1_1 == "" or L2_2 == nil or L2_2 == "" then
    return mp.CLEAN
  end
else
  return mp.CLEAN
end
if string.find(L1_1, "%", 1, true) ~= nil or string.find(L2_2, "%", 1, true) ~= nil then
  return mp.CLEAN
end
if ({
  exe = true,
  dll = true,
  sys = true
})[string.lower(string.match(L1_1, "%.([^%.]+)$"))] == true and not MpCommon.QueryPersistContext(L2_2, L0_0) then
  MpCommon.AppendPersistContext(L2_2, L0_0, 0)
  return mp.INFECTED
end
return mp.CLEAN
