if pevars.epsec < pehdr.NumberOfSections or mp.readu_u32(epcode, 1) ~= 2030270560 or peattributes.epoutofimage or peattributes.amd64_image or pehdr.SizeOfImage > mp.getfilesize() then
  mp.changedetectionname(805306412)
  return mp.INFECTED
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_INMEMORY then
  return mp.CLEAN
end
if pehdr.NumberOfSections >= 1 and peattributes.isexe and peattributes.epscn_islast and peattributes.lastscn_writable and peattributes.lastscn_executable and hstrlog[2].VA - pehdr.ImageBase >= pesecs[pehdr.NumberOfSections].VirtualAddress and hstrlog[3].VA - pehdr.ImageBase >= pesecs[pehdr.NumberOfSections].VirtualAddress then
  return mp.INFECTED
end
return mp.CLEAN
