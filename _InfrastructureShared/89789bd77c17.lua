if pehdr.NumberOfSections == 3 and mp.getfilesize() < 3064000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
