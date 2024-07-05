if pevars.epsec > pehdr.NumberOfSections then
  return mp.CLEAN
end
if pesecs[pevars.epsec].SizeOfRawData ~= 20480 then
  return mp.CLEAN
end
if mp.bitand(pesecs[pevars.epsec].VirtualSize, 16384) ~= 16384 then
  return mp.CLEAN
end
if pesecs[pevars.epsec].Characteristics ~= 1610612768 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 3 then
  return mp.CLEAN
end
return pe.scanpage(pesecs[pevars.epsec].PointerToRawData)
