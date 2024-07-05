local L0_0
L0_0 = pe
L0_0 = L0_0.get_exports
L0_0 = L0_0()
if L0_0 < 4 then
  return mp.CLEAN
end
for _FORV_7_ = 1, L0_0 do
end
if 0 + ({
  ["ExecutePatch"] = 1,
  ["Main@12"] = 1,
  ["MakeUuid"] = 1,
  ["kAiCode"] = 1
})[pe.mmap_string_rva(L0_0()[_FORV_7_].namerva, 64)] == 4 then
  return mp.INFECTED
end
return mp.CLEAN
