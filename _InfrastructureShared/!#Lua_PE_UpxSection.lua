local L0_0, L2_1, L3_2, L4_3
if L0_0 >= 10 then
  return L0_0
end
for L4_3 = 1, L2_1.NumberOfSections do
  if pesecs[L4_3].Name == "UPX0" or pesecs[L4_3].Name == "UPX1" then
    return mp.INFECTED
  end
end
return L0_0
