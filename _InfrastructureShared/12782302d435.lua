local L0_0
L0_0 = doshdr
L0_0 = L0_0.e_lfanew
L0_0 = L0_0 + pehdr.NumberOfSections * 40
L0_0 = L0_0 + pehdr.SizeOfOptionalHeader
L0_0 = L0_0 + 64
if mp.readu_u32(headerpage, L0_0) == 4867584 then
  return mp.INFECTED
end
return mp.CLEAN
