if mp.ispackedwith("UPX_+") then
  mp.set_mpattribute("Lua:FileIsPackedWithUPX")
end
if peattributes.packersigmatched then
  mp.set_mpattribute("Lua:FileIsPackedWithPackerSigMatched")
end
if peattributes.packed then
  return mp.INFECTED
end
return mp.CLEAN
