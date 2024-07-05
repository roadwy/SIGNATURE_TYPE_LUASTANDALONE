local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
if L1_1 > 4096 then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(this_sigattrlog[1].utf8p1, "\\([^\\]+)$")
  if L1_1 and (string.lower(L1_1) == "lzma.exe" or string.lower(L1_1) == "lzma_exe" or string.lower(L1_1) == "atinst.exe") then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
