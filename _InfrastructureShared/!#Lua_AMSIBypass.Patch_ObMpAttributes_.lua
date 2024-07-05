local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L1_1 = "SCRIPT:AMSIBypass.Patch"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L1_1 = "SCRIPT:StrConcat!obfus"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 8192 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = tostring
L3_3 = headerpage
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
L2_2 = 0
L3_3 = 0
L1_1 = string.gsub(L1_1, " ", "")
L1_1 = string.gsub(L1_1, "`", "")
L1_1, L3_3 = string.gsub(L1_1, "%[char%](%d+)", function(A0_4)
  return "'" .. string.char(A0_4) .. "'"
end)
L2_2 = L2_2 + L3_3
L1_1, L3_3 = string.gsub(L1_1, "\"%+\"", "")
L2_2 = L2_2 + L3_3
L1_1, L3_3 = string.gsub(L1_1, "'%+'", "")
L2_2 = L2_2 + L3_3
L1_1 = string.gsub(L1_1, "\"([%l%d]+)\"", "%1")
if L2_2 < 2 then
  return mp.CLEAN
end
mp.vfo_add_buffer(L1_1, "[StrConcat]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
