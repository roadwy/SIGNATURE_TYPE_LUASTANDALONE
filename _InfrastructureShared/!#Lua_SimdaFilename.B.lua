local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L1_1 = L1_1(L2_2, -4)
if L0_0 and (L1_1 == ".exe" or L1_1 == ".zip" or L1_1 == ".tmp") then
  L2_2 = L0_0.match
  L2_2 = L2_2(L0_0, "\\([^\\]+)$")
  if L2_2 and (L2_2 == "scandisk.exe" or L2_2 == "scandisc.exe" or L2_2 == "chrome_update.zip" or string.match(L2_2, "^video%.hd_[%d%[%]]*%.zip$") or string.match(L2_2, "^hd%.gallery_[%d%[%]]*%.zip$") or string.match(L2_2, "^~%w%w%w%w%w%w%w%w%w%w%w%w%.tmp$")) then
    mp.set_mpattribute("Lua:SimdaFilename.B")
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
