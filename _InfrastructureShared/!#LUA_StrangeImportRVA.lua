local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.arm_image
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_imports
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.no_boundimport
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.no_delayimport
    if L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.no_iat
      if L0_0 then
        L0_0 = pehdr
        L0_0 = L0_0.DataDirectory
        L0_0 = L0_0[2]
        L0_0 = L0_0.RVA
        L1_1 = pesecs
        L1_1 = L1_1[1]
        L1_1 = L1_1.VirtualAddress
        if L0_0 ~= 0 and L0_0 < 8192 and L0_0 < L1_1 then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
