local L0_0, L1_1
function L0_0(A0_2)
  if string.find(string.lower(A0_2), "\\driver\\", 1, true) then
    return string.sub(A0_2, string.find(string.lower(A0_2), "\\driver\\", 1, true) + 1)
  end
  return A0_2
end
StripDriverPrefix = L0_0
function L0_0()
  local L0_3, L1_4, L2_5, L3_6, L4_7, L5_8
  L0_3 = sysio
  L0_3 = L0_3.GetObjectDir
  L1_4 = "\\Device"
  L0_3 = L0_3(L1_4)
  L1_4 = 0
  for L5_8, _FORV_6_ in L2_5(L3_6) do
    if string.find(L5_8, "%x%x%x%x%x%x%x%x") == 1 and string.sub(L5_8, 6, 6) ~= "0" then
      L1_4 = L1_4 + 1
    end
  end
  if L1_4 == 1 then
    return L2_5
  end
  return L2_5
end
AlureonDeviceTrigger = L0_0
