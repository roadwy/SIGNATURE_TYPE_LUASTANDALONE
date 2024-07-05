local L0_0
L0_0 = pevars
L0_0 = L0_0.sigaddr
if L0_0 ~= pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr + 10, 1)
if mp.bitand(string.byte(L0_0, 1), 128) == 0 then
  return mp.CLEAN
end
return mp.INFECTED
