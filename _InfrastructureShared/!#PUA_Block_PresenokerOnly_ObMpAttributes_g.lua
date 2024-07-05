local L0_0
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L0_0 = L0_0("PUA:ML:Block")
if #L0_0 > 0 then
  return mp.CLEAN
end
L0_0 = mp.enum_mpattributesubstring("PUA:Block:")
if #L0_0 == 0 or L0_0 == nil then
  return mp.INFECTED
end
for _FORV_4_, _FORV_5_ in ipairs(L0_0) do
  if _FORV_5_ ~= "PUA:Block:Presenoker" then
    return mp.CLEAN
  end
end
return mp.INFECTED
