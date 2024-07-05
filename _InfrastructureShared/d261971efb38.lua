if (mp.getfilesize() >= 6291456 and mp.getfilesize() <= 8388608 or mp.getfilesize() >= 2097152 and mp.getfilesize() <= 4194304) and pehdr.NumberOfSections == 10 then
  return mp.INFECTED
end
return mp.CLEAN
