local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.epscn_writable
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.packed
if L0_0 ~= false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epinfirstsect
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasstandardentry
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[6]
L0_0 = L0_0.Size
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[3]
L0_0 = L0_0.Size
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pevars
L0_0 = L0_0.epsec
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
if L0_0 > L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pevars
L1_1 = L1_1.epsec
L0_0 = L0_0[L1_1]
L0_0 = L0_0.NameDW
if L0_0 ~= 2019914798 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.NameDW
if L0_0 == 1920168494 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.SizeOfRawData
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 ~= 85 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[2]
if L0_0 ~= 137 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[3]
if L0_0 ~= 229 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
