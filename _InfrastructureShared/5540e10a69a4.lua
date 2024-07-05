local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.packed
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.checks_teb_lasterror
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.dynmem_APIcall
    if L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.executes_from_dynamic_memory
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.SUSPICIOUS
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
