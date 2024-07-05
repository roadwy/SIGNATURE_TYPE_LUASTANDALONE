local L0_0
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "f\001\218k\210\003f\247\210\144\193\202\005\137\2150\016",
    xray_type = 3,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, 2, 0, 256)
