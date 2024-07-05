local L0_0, L1_1
L0_0 = "SLF:Win32/PossibleMasquerading.EA"
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L1_1 = L1_1(L0_0)
if L1_1 == nil or #L1_1 == 0 or type(L1_1) ~= "table" then
  return mp.CLEAN
end
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if #_FORV_6_ > 32 then
    mp.set_mpattribute("BM_MT1036.005")
    return mp.INFECTED
  end
end
return mp.CLEAN
