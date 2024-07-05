if peattributes.enable_vmm_grow and peattributes.no_uidata and peattributes.no_comruntime and mp.getfilesize() >= 150000 and mp.getfilesize() < 330000 then
  return mp.INFECTED
end
return mp.CLEAN
