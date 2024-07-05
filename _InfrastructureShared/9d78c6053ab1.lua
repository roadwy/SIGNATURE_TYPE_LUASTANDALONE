if hstrlog[1].matched and (hstrlog[2].matched or hstrlog[3].matched) then
  if pehdr.SizeOfImage > 327680 and pehdr.SizeOfImage < 1048576 then
    mp.changedetectionname(805306419)
    return mp.INFECTED
  else
    return mp.SUSPICIOUS
  end
end
return mp.CLEAN
