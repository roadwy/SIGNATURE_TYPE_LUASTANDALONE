if not mp.get_mpattribute("pea_enable_vmm_grow") then
  mp.set_mpattribute("pea_enable_vmm_grow")
  pe.reemulate()
end
return mp.CLEAN
