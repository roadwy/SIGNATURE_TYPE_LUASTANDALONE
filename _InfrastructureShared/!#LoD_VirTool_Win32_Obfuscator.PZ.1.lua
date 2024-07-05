local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.AddressOfEntryPoint
if L0_0 ~= 238592 then
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
L0_0 = L0_0.VirtualSize
if L0_0 ~= 16384 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
