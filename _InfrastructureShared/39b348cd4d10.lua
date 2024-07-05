local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.ppid
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L2_2 = L1_1()
  for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
    if _FORV_7_.ppid == L0_0 then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
