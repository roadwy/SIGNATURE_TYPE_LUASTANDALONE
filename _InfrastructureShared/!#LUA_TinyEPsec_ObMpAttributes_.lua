local L0_0, L1_1
L0_0 = pevars
L0_0 = L0_0.epsec
if L0_0 == 1 then
  L0_0 = pesecs
  L0_0 = L0_0[1]
  L0_0 = L0_0.SizeOfRawData
  if L0_0 == 1024 then
    L0_0 = peattributes
    L0_0 = L0_0.isdll
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
    L0_0 = mp
    L0_0 = L0_0.LOWFI
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
