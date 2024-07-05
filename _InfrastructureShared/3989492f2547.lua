local L0_0
L0_0 = pe
L0_0 = L0_0.get_regval
L0_0 = L0_0(pe.REG_EAX)
if pe.get_api_id(L0_0) ~= 671954542 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 29, "\235")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
