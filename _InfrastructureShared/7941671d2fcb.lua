local L0_0, L1_1
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.VirtualSize
if L0_0 > 45056 then
  L0_0 = pesecs
  L0_0 = L0_0[1]
  L0_0 = L0_0.VirtualSize
  if L0_0 < 61440 then
    L0_0 = pesecs
    L0_0 = L0_0[2]
    L0_0 = L0_0.VirtualSize
    if L0_0 > 768 then
      L0_0 = pesecs
      L0_0 = L0_0[2]
      L0_0 = L0_0.VirtualSize
      if L0_0 < 1536 then
        L0_0 = mp
        L0_0 = L0_0.INFECTED
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
