local L0_0
L0_0 = mp
L0_0 = L0_0.ispackedwith
L0_0 = L0_0("AutoIt_+")
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.epscn_writable
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.lastscn_writable
    if L0_0 then
      L0_0 = pehdr
      L0_0 = L0_0.NumberOfSections
      if L0_0 == 4 then
        L0_0 = pesecs
        L0_0 = L0_0[3]
        L0_0 = L0_0.SizeOfRawData
        if L0_0 > 262144 then
          L0_0 = pesecs
          L0_0 = L0_0[3]
          L0_0 = L0_0.PointerToRawData
          L0_0 = L0_0 + 20480
          mp.readprotection(false)
          if mp.readfile(L0_0, 16) == "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000" then
            if mp.getfilesize() >= 4194304 then
              mp.set_mpattribute("AutoItIgnoreMaxSizes")
            end
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
