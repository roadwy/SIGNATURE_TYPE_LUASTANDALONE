local L0_0, L1_1
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 == 184 then
  L0_0 = epcode
  L0_0 = L0_0[6]
  if L0_0 == 255 then
    L0_0 = epcode
    L0_0 = L0_0[7]
  end
else
  if L0_0 ~= 224 then
    L0_0 = epcode
    L0_0 = L0_0[1]
    if L0_0 == 104 then
      L0_0 = epcode
      L0_0 = L0_0[6]
    end
end
elseif L0_0 == 232 then
  L0_0 = mp
  L0_0 = L0_0.LOWFI
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
