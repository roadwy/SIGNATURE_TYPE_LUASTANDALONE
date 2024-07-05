local L0_0, L1_1
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L1_1 = L1_1("RPF:MSVC:EH:LogFuncSize")
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.enum_mpattributesubstring
  L1_1 = L1_1("RPF:MSVC:EH:LogFuncSize:")
  L0_0 = L1_1
else
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L1_1 = L1_1("RPF:DWARF:EH:LogFuncSize")
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.enum_mpattributesubstring
    L1_1 = L1_1("RPF:DWARF:EH:LogFuncSize:")
    L0_0 = L1_1
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = {}
for _FORV_5_, _FORV_6_ in ipairs(L0_0) do
  L1_1[#L1_1 + 1] = _FORV_6_:match("RPF:MSVC:EH:LogFuncSize:(%d+:%d+)")
end
mp.set_mpattribute("MpInternal_researchdata=LogFuncSize:CD=" .. table.concat(L1_1, ";"))
return mp.CLEAN
