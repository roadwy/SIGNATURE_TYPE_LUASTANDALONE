local L0_0
L0_0 = peattributes
L0_0 = L0_0.epcallnext
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[17]
if L0_0 ~= 195 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[10]
if L0_0 ~= 129 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[6]
if L0_0 ~= 131 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "PSQRVWU\139T$\028\232H\006\000\0003\192\143\132\005\161*@\000\131\192\004\131\248\028u",
    xray_type = 3,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, -1, 0, 1024)
