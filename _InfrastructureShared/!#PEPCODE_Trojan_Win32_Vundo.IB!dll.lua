if peattributes.no_relocs ~= false then
  return mp.CLEAN
end
if peattributes.epscn_writable == false then
  return mp.CLEAN
end
if peattributes.packed ~= false then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasexports == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pevars.epsec > pehdr.NumberOfSections then
  return mp.CLEAN
end
if pesecs[pevars.epsec].VirtualSize ~= 8192 then
  return mp.CLEAN
end
if mp.bitand(pesecs[pevars.epsec].Characteristics, 2147483648) ~= 2147483648 then
  return mp.CLEAN
end
if pesecs[1].NameDW ~= 2019914798 then
  return mp.CLEAN
end
if pehdr.DataDirectory[3].Size ~= 0 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 5 then
  return mp.CLEAN
end
if pehdr.NumberOfSections >= 10 then
  return mp.CLEAN
end
return mp.INFECTED
