if mp.get_mpattribute("NID:PossibleParadiseSh") and peattributes.no_security == true and mp.getfilesize() <= 8704 and mp.getfilesize() >= 7680 and peattributes.isdll == false and pehdr.NumberOfSections == 4 then
  return mp.INFECTED
end
return mp.CLEAN
