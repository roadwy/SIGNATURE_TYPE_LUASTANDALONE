if mp.getfilesize() > 259840 or mp.getfilesize() < 132864 or peattributes.isdll == false or peattributes.hasexports == false or peattributes.suspicious_timestamp == false then
  return mp.CLEAN
end
if hstrlog[1].matched and pehdr.ImageBase + pehdr.AddressOfEntryPoint - hstrlog[1].VA < 21 then
  return mp.INFECTED
end
if hstrlog[2].matched and 21 > pehdr.ImageBase + pehdr.AddressOfEntryPoint - hstrlog[2].VA then
  return mp.INFECTED
end
if hstrlog[3].matched and 21 > pehdr.ImageBase + pehdr.AddressOfEntryPoint - hstrlog[3].VA then
  return mp.INFECTED
end
if hstrlog[4].matched and 21 > pehdr.ImageBase + pehdr.AddressOfEntryPoint - hstrlog[4].VA then
  return mp.INFECTED
end
if hstrlog[5].matched and 21 > pehdr.ImageBase + pehdr.AddressOfEntryPoint - hstrlog[5].VA then
  return mp.INFECTED
end
if hstrlog[6].matched and 21 > pehdr.ImageBase + pehdr.AddressOfEntryPoint - hstrlog[6].VA then
  return mp.INFECTED
end
if hstrlog[7].matched and 21 > pehdr.ImageBase + pehdr.AddressOfEntryPoint - hstrlog[7].VA then
  return mp.INFECTED
end
if hstrlog[8].matched and 21 > pehdr.ImageBase + pehdr.AddressOfEntryPoint - hstrlog[8].VA then
  return mp.INFECTED
end
return mp.CLEAN
