if peattributes.no_security == true and mp.getfilesize() >= 118784 and mp.getfilesize() <= 139264 and (pehdr.NumberOfSections >= 5 or pehdr.NumberOfSections <= 7) then
  return mp.INFECTED
end
return mp.CLEAN
