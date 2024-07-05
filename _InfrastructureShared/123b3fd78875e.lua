local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.reg_block_usermode
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.reg_block_src
    if L0_0 ~= bm.BM_REG_BLOCK_TAMPER_PROTECTION then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
else
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.reg_block_usermode
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.reg_block_src
      if L0_0 ~= bm.BM_REG_BLOCK_TAMPER_PROTECTION then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
    end
  else
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L0_0 = L0_0()
if L0_0 then
  for _FORV_5_, _FORV_6_ in ipairs(L0_0) do
    if _FORV_6_.ppid and mp.bitand(_FORV_6_.reason_ex, 1) == 1 then
      bm.add_related_process(_FORV_6_.ppid)
    end
  end
end
return mp.INFECTED
