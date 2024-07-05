local L0_0
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L0_0 = L0_0("EFI_")
if L0_0 and type(L0_0) == "table" then
  SetAttributeFromClassifierScoresEx(#L0_0, {
    30,
    20,
    15,
    10,
    5,
    1
  }, "Lua:EfiGuidsApprox:")
end
return mp.CLEAN
