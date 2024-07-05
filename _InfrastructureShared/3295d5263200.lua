if not peattributes.amd64_image then
  return mp.CLEAN
end
if not peattributes.enable_vmm_grow then
  pe.set_peattribute("enable_vmm_grow", true)
end
return mp.INFECTED
