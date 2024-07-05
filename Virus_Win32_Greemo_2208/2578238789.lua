local L0_0
L0_0 = pehdr
L0_0 = L0_0.PointerToSymbolTable
if L0_0 ~= 1229739332 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_eqsizes
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 2048 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_falign
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "`j Zd\139\002\133\192t\bj\255Xd\137\002\139\224\232\006\000\000\000\139d$\b\235\0253\210d\2552d\137\"\244\255\226",
    xray_type = 0,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, -1, -2816, -2304)
