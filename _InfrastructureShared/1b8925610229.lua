local L0_0
L0_0 = pevars
L0_0 = L0_0.sigaddr
if L0_0 == pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  L0_0 = pe
  L0_0 = L0_0.get_api_id
  L0_0 = L0_0(mp.readu_u32(pe.mmap_va(mp.readu_u32(pe.mmap_va(pevars.sigaddr + 18, 4), 1), 4), 1))
  if L0_0 == 1467596470 and pe.get_api_id(mp.readu_u32(pe.mmap_va(mp.readu_u32(pe.mmap_va(pevars.sigaddr + 24, 4), 1), 4), 1)) == 3909456120 then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
