if pevars.epsec > pehdr.NumberOfSections then
  return mp.CLEAN
end
if pesecs[pevars.epsec].SizeOfRawData ~= 131072 then
  return mp.CLEAN
end
if mp.bitand(pesecs[pevars.epsec].VirtualSize, 126976) ~= 126976 then
  return mp.CLEAN
end
if pesecs[pevars.epsec].Characteristics ~= 1610612768 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 4 then
  return mp.CLEAN
end
return pe.scanpage(pesecs[pevars.epsec].PointerToRawData)
