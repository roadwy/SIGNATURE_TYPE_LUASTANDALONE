local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.epscn_valign
if L0_0 == true then
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
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.NameDW
if L0_0 ~= 2019914798 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 ~= 144 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[2]
if L0_0 ~= 139 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[3]
if L0_0 ~= 12 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[4]
if L0_0 ~= 36 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[5]
if L0_0 ~= 51 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[6]
if L0_0 ~= 192 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[7]
if L0_0 ~= 72 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[8]
if L0_0 ~= 102 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[9]
if L0_0 ~= 64 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[10]
if L0_0 ~= 15 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[11]
if L0_0 ~= 142 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[14]
if L0_0 ~= 255 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[15]
if L0_0 ~= 255 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
