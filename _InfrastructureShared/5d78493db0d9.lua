if peattributes.no_security == true and mp.getfilesize() >= 520192 and mp.getfilesize() <= 589824 and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 and pesecs[2].Name == ".jnbcf" then
  return mp.INFECTED
end
return mp.CLEAN
