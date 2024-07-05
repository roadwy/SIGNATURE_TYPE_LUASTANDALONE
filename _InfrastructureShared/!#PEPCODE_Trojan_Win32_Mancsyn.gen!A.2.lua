if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if mp.getfilesize() ~= 72706 then
  return mp.CLEAN
end
return mp.INFECTED
