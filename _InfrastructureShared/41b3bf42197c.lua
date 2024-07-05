local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.ppid
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L1_1 = L1_1(L0_0)
if L1_1 == nil or #L1_1 < 1 then
  return mp.CLEAN
end
for _FORV_7_, _FORV_8_ in ipairs(L1_1) do
  if mp.bitand(_FORV_8_.reason_ex, 1) == 1 and string.len(_FORV_8_.image_path) > 15 and string.sub(_FORV_8_.image_path, -15) == "\\powershell.exe" then
    bm.add_related_process(_FORV_8_.ppid)
    break
  end
end
if _FORV_8_.ppid == nil then
  return mp.CLEAN
end
return mp.INFECTED
