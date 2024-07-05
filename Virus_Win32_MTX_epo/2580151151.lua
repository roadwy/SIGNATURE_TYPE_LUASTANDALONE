local L0_0
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
if L0_0 < 9245 then
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
    sig = "\156`\233\000\000\000\000\190\144\001\004\139\254\185\144\001\002\000\000\252\173\144\001\015\171\226\237\235\004\144\000",
    xray_type = 9,
    bytes_to_decrypt = 0
  },
  {
    sig = "dg\2556\000\000dg\137&\000\000\139H<\139T\b4;\194u\218\139\234\003\193\005\128\000\000\000",
    xray_type = 0,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 2, -1, -10000, -6000)
