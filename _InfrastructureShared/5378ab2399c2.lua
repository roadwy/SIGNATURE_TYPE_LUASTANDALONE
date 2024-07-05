local L0_0, L2_1, L4_2
if L0_0 >= 7 then
  return L0_0
end
for _FORV_3_ = 1, L2_1.NumberOfSections do
  if pesecs[_FORV_3_].Name == ".ndata" then
    return mp.INFECTED
  end
end
return L0_0
