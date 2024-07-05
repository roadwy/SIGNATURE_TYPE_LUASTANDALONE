if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if peattributes.epscn_writable == false then
  return mp.CLEAN
end
if peattributes.firstsectwritable ~= true then
  return mp.CLEAN
end
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if pesecs[1].NameDW ~= 2019914798 then
  return mp.CLEAN
end
if pevars.epsec > pehdr.NumberOfSections then
  return mp.CLEAN
end
if pesecs[pevars.epsec].NameDW ~= 1952539694 then
  return mp.CLEAN
end
if pehdr.DataDirectory[3].RVA <= 0 then
  return mp.CLEAN
end
if pehdr.DataDirectory[3].Size < 16 then
  return mp.CLEAN
end
if pehdr.DataDirectory[6].RVA ~= 0 then
  return mp.CLEAN
end
if pehdr.DataDirectory[3].RVA == 0 then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if mp.bitand(pesecs[pevars.epsec].Characteristics, 2147483648) ~= 2147483648 then
  return mp.CLEAN
end
return mp.INFECTED
