if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA ~= 0 then
  return mp.CLEAN
end
if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE].RVA == 0 then
  return mp.CLEAN
end
if mp.getfilesize() >= 307200 or mp.getfilesize() < 51200 then
  return mp.CLEAN
end
return mp.INFECTED
