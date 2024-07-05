local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.UfsGetMetadataBool
L1_1 = "Lua:FileInZip"
L2_2 = true
L1_1 = L0_0(L1_1, L2_2)
if L0_0 ~= 0 or not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if string.find(L2_2, "\\downloads", 1, true) then
  if string.sub(L2_2, -10) == "\\downloads" then
    mp.set_mpattribute("Lua:HtaInsideZipDownloadsBasePath")
  elseif string.find(L2_2, "\\downloads\\", 1, true) then
    mp.set_mpattribute("Lua:HtaInsideZipDownloadsWithSubPath")
  end
  return mp.INFECTED
end
return mp.CLEAN
