local L0_0, L1_1
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 == 232 then
  L0_0 = epcode
  L0_0 = L0_0[6]
  if L0_0 == 232 then
    L0_0 = epcode
    L0_0 = L0_0[11]
    if L0_0 == 51 then
      L0_0 = epcode
      L0_0 = L0_0[13]
      if L0_0 == 195 then
        L0_0 = pevars
        L0_0 = L0_0.lscnwr
        if L0_0 == 1 then
          L0_0 = pesecs
          L1_1 = pehdr
          L1_1 = L1_1.NumberOfSections
          L0_0 = L0_0[L1_1]
          L0_0 = L0_0.PointerToRawData
          if L0_0 == 45056 then
            L0_0 = mp
            L0_0 = L0_0.INFECTED
            return L0_0
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
