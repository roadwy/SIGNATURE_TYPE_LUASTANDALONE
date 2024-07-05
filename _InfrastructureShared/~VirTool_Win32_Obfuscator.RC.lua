local L0_0
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 <= 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L0_0 = L0_0(epcode, 1)
if L0_0 ~= 5631 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L0_0 = L0_0(epcode, 7)
if L0_0 ~= 63617 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L0_0 = L0_0(epcode, 9)
if L0_0 ~= 65535 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\141\139\213\253\255\255\129\193\213\253\255\255Q\141\133$\244\255\255\199\000\000\000\000\000\232",
    xray_type = 11,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, 2, 0, 256)
