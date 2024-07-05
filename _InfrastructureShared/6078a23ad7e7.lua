local L0_0
L0_0 = mp
L0_0 = L0_0.hstr_full_log
L0_0 = L0_0()
for _FORV_4_, _FORV_5_ in pairs(L0_0) do
  if _FORV_5_.matched and string.byte(pe.mmap_va(_FORV_5_.VA - 39, 1)) == string.byte(pe.mmap_va(_FORV_5_.VA - 25, 1)) then
    return mp.INFECTED
  end
end
return mp.CLEAN
