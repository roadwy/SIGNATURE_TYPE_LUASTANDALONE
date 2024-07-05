if pevars.epsec < pehdr.NumberOfSections or mp.readu_u32(epcode, 1) ~= 2030270560 or peattributes.epoutofimage or peattributes.amd64_image or pehdr.SizeOfImage > mp.getfilesize() then
  mp.changedetectionname(805306412)
  return mp.INFECTED
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_INMEMORY then
  return mp.CLEAN
end
return mp.INFECTED
