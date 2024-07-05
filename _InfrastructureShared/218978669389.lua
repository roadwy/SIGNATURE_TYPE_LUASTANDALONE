if peattributes.isdll then
  return mp.CLEAN
end
if mp.getfilesize() < 17920 or mp.getfilesize() > 70656 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 12, "\001\000\000")
return mp.INFECTED
