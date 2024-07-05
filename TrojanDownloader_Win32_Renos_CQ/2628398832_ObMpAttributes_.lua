local L0_0
L0_0 = peattributes
L0_0 = L0_0.resource_only_dll
if L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if L0_0 == 3 then
    L0_0 = peattributes
    L0_0 = L0_0.no_ep
    if L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.x86_image
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.readprotection
        L0_0(false)
        L0_0 = mp
        L0_0 = L0_0.readfile
        L0_0 = L0_0(pesecs[2].PointerToRawData, 352)
        if mp.crc32(-1, L0_0, 1, 352) == 2202006724 then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
