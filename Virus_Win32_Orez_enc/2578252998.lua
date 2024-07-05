local L0_0
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
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
L0_0 = peattributes
L0_0 = L0_0.no_relocs
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.packed
if L0_0 ~= false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 6900 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.VirtualSize
if L0_0 < 6900 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\014\000\002\000\024\000$\000\002\000 \000p\000\002\000H\000\204\002\002\000\164\000\192\000\002\000\168\000\160\003\002\000\224\000\228\000\003\000P\001\216\001\020\003\003\000T\001\220\001\024\003\003\000X\001\224\001\028\003\002\000\140\001\016\003\003\000\128\002\236\002\248\002\002\000\156\002\232\002\002\000,\0030\003\002\000\152\003\220\003",
    xray_type = 14,
    bytes_to_decrypt = 0
  },
  {
    sig = "\016\000\002\000 \000p\000\002\000H\000\216\002\002\000\164\000\192\000\002\000\168\000\172\003\002\000\224\000\228\000\003\000P\001\216\001 \003\003\000T\001\220\001$\003\003\000X\001\224\001(\003\002\000\140\001\028\003\002\000\132\002\240\004\003\000\140\002\248\002\004\003\002\000\168\002\244\002\002\0008\003<\003\002\000\164\003\232\003\003\000\172\004\196\004\208\004\002\000X\005h\005",
    xray_type = 14,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 2, -1, 0, -1)
