if peattributes.no_security == true and mp.getfilesize() >= 131072 and mp.getfilesize() <= 139264 and (pehdr.NumberOfSections >= 6 or pehdr.NumberOfSections <= 9) and (pesecs[1].VirtualSize > 8192 or pesecs[1].VirtualSize < 12288) then
  return mp.INFECTED
end
return mp.CLEAN
