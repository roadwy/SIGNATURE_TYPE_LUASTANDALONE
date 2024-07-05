local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
if L1_1 then
  L0_0 = L1_1
elseif L1_1 then
  L0_0 = L1_1
elseif L1_1 then
  L0_0 = L1_1
end
if L0_0 ~= nil then
  for L4_4, L5_5 in L1_1(L2_2) do
    if string.find(string.lower(L5_5), "/library/preferences/com.apple.loginwindow.plist", 1, true) then
      return mp.INFECTED
    end
  end
  return L1_1
end
return L1_1
