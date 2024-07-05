local L0_0
L0_0 = peattributes
L0_0 = L0_0.isvbpcode
if L0_0 ~= true then
  L0_0 = peattributes
  L0_0 = L0_0.isvbnative
  if L0_0 ~= true then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1048576 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.hitcount
if L0_0 > 40 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.PointerToRawData
L0_0 = L0_0 + pesecs[pehdr.NumberOfSections].SizeOfRawData
if L0_0 ~= pe.foffset_va(pehdr.ImageBase + (pehdr.SizeOfImage - 1)) + 1 then
  L0_0 = pe.foffset_va(pehdr.ImageBase + (pehdr.SizeOfImage - 1)) + 1
end
if pesecs[1].SizeOfRawData > 61440 then
  return mp.CLEAN
end
if pesecs[pehdr.NumberOfSections].SizeOfRawData < 65536 and mp.getfilesize() - L0_0 < 65536 then
  return mp.CLEAN
end
return mp.INFECTED
