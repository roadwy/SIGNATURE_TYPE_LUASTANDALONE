if peattributes.isdll == true and peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() > 110000 and mp.getfilesize() < 300000 and pesecs[2].Name == ".sdata" and pesecs[3].Name == ".rsrc" and pesecs[3].VirtualSize <= 720 and pesecs[4].Name == ".reloc" and pesecs[4].VirtualSize <= 28 then
  return mp.INFECTED
end
return mp.CLEAN
