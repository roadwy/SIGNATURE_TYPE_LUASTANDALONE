local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = tonumber
  L0_0 = L0_0(this_sigattrlog[4].p1, 16)
  if not pe.contains_va(2, L0_0) and not pe.contains_va(3, L0_0) then
    return mp.CLEAN
  end
  if mp.bitand(L0_0, 4095) == 0 then
    mp.set_mpattribute("LOWFI:SIGATTR:VirTool:Win32/OwnProcessWriteProcMemVA000")
    return mp.CLEAN
  end
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
