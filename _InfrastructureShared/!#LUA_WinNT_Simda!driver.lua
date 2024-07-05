if pehdr.Subsystem ~= 1 then
  return mp.CLEAN
end
if pehdr.Machine ~= 332 then
  return mp.CLEAN
end
if mp.getfilesize() < 4096 then
  return mp.CLEAN
end
for _FORV_3_ = 1, pehdr.NumberOfSections do
  if mp.bitand(pesecs[_FORV_3_].Characteristics, 2147483648) ~= 2147483648 then
    return mp.CLEAN
  end
end
_FOR_.readprotection(false)
if mp.readfile(pesecs[1].PointerToRawData, 4) == "(re)" then
  return mp.INFECTED
end
return mp.CLEAN
