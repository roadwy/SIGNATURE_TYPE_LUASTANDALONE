if peattributes.no_security == true and mp.getfilesize() >= 155648 and mp.getfilesize() <= 204800 and (pehdr.NumberOfSections >= 6 or pehdr.NumberOfSections <= 7) and (pesecs[1].VirtualSize > 106496 or pesecs[1].VirtualSize < 118784) then
  return mp.INFECTED
end
return mp.CLEAN
