local L0_0
L0_0 = pehdr
L0_0 = L0_0.MinorLinkerVersion
if L0_0 ~= 19 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_eqsizes
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\232\006\000\000\000\139d$\b\235Y3\201d\2551d\137!9\vuM9K\004uH\140\200\131\224",
    xray_type = 0,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\006\000\000\000r\237\248\195\249\195S\232\t\000\000\000\139d$\b\235\127\144\144\1443\201d\2551d",
    xray_type = 0,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 2, -1, -8192, -2048)
