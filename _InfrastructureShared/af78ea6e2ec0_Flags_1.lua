local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 6 then
  L0_0 = pesecs
  L0_0 = L0_0[6]
  L0_0 = L0_0.Name
  if L0_0 == ".rsrc" then
    L0_0 = pesecs
    L0_0 = L0_0[6]
    L0_0 = L0_0.VirtualSize
    if L0_0 >= 199968 then
      L0_0 = pesecs
      L0_0 = L0_0[6]
      L0_0 = L0_0.VirtualSize
      if L0_0 <= 200144 then
        L0_0 = mp
        L0_0 = L0_0.INFECTED
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.SUSPICIOUS
return L0_0
