local L0_0, L1_1
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.Name
if L0_0 == "CODE" then
  L0_0 = pesecs
  L0_0 = L0_0[2]
  L0_0 = L0_0.Name
  if L0_0 == "DATA" then
    L0_0 = pesecs
    L0_0 = L0_0[3]
    L0_0 = L0_0.Name
  end
else
  if L0_0 ~= "BSS" then
    L0_0 = pesecs
    L0_0 = L0_0[1]
    L0_0 = L0_0.Name
    if L0_0 == "UPX0" then
      L0_0 = pesecs
      L0_0 = L0_0[2]
      L0_0 = L0_0.Name
    end
end
elseif L0_0 == "UPX1" then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
