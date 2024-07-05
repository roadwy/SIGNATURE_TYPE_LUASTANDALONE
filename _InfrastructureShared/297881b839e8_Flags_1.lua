if mp.getfilesize() < 4000000 and hstrlog[1].VA >= 0 + pehdr.ImageBase and hstrlog[1].VA <= 1024 + pehdr.ImageBase and hstrlog[2].VA >= 0 + pehdr.ImageBase and hstrlog[2].VA <= 1024 + pehdr.ImageBase then
  return mp.INFECTED
end
return mp.CLEAN
