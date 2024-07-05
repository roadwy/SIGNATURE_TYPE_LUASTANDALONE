local L0_0, L1_1, L2_2
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 >= 2 then
  L0_0 = peattributes
  L0_0 = L0_0.isexe
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.lastscn_writable
    if L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.lastscn_executable
      if L0_0 then
        L0_0 = peattributes
        L0_0 = L0_0.lastscn_vfalign
        if L0_0 then
          L0_0 = pesecs
          L1_1 = pehdr
          L1_1 = L1_1.NumberOfSections
          L0_0 = L0_0[L1_1]
          L0_0 = L0_0.Name
          if L0_0 == ".text" then
            L0_0 = hstrlog
            L0_0 = L0_0[1]
            L0_0 = L0_0.VA
            L1_1 = pehdr
            L1_1 = L1_1.ImageBase
            L0_0 = L0_0 - L1_1
            L1_1 = pesecs
            L2_2 = pehdr
            L2_2 = L2_2.NumberOfSections
            L1_1 = L1_1[L2_2]
            L1_1 = L1_1.VirtualAddress
            if L0_0 >= L1_1 then
              L0_0 = mp
              L0_0 = L0_0.INFECTED
              return L0_0
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
