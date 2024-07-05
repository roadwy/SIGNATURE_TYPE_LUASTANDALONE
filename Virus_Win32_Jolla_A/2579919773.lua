local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
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
L0_0 = L0_0.SizeOfRawData
if L0_0 <= 262144 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pevars
L1_1 = L1_1.epsec
L0_0 = L0_0[L1_1]
L0_0 = L0_0.VirtualSize
L1_1 = pesecs
L1_1 = L1_1[pevars.epsec]
L1_1 = L1_1.SizeOfRawData
L0_0 = L0_0 - L1_1
if L0_0 ~= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  {
    sig = "[Sf3\219f\129;ZMt\015f\129;MZt\b\129\235\000\016\000\000\235\231\232+\000\000\000GetProcAdd",
    xray_type = 4,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L1_1, 1, 0, 0, -1)
