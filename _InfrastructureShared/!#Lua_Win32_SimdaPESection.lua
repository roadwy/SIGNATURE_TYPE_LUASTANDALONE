local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 >= 10 then
  L0_0 = pesecs
  L0_0 = L0_0[6]
  L0_0 = L0_0.Name
  if L0_0 == ".driver" then
    L0_0 = pesecs
    L0_0 = L0_0[7]
    L0_0 = L0_0.NameDW
    if L0_0 == 1734763310 then
      L0_0 = pesecs
      L0_0 = L0_0[8]
      L0_0 = L0_0.NameDW
      if L0_0 ~= 1667331374 then
        L0_0 = pesecs
        L0_0 = L0_0[10]
        L0_0 = L0_0.NameDW
      elseif L0_0 == 1667331374 then
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
