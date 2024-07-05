if mp.getfilesize() < 3000000 and hstrlog[1].VA >= 0 + pehdr.ImageBase and hstrlog[1].VA <= 1024 + pehdr.ImageBase and hstrlog[2].VA >= 0 + pehdr.ImageBase and hstrlog[2].VA <= 1024 + pehdr.ImageBase and hstrlog[3].matched then
  return mp.INFECTED
end
return mp.CLEAN
