local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.packed
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.no_exception
    if L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.no_exports
      if L0_0 then
        L0_0 = peattributes
        L0_0 = L0_0.no_security
        if L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.x86_image
        end
      end
    end
  end
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pevars
L0_0 = L0_0.sigaddr
L1_1 = pe
L1_1 = L1_1.vm_search
L2_2 = L0_0
L1_1 = L1_1(L2_2, L0_0 + 256, "`\156", nil, pe.VM_SEARCH_FOP)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.vm_search
L2_2 = L2_2(L1_1, L1_1 + 256, "\185", nil, pe.VM_SEARCH_FOP)
if L2_2 == nil then
  return mp.CLEAN
end
L2_2 = pe.vm_search(L2_2, L2_2 + 256, "\226", nil, pe.VM_SEARCH_FOP)
if L2_2 == nil then
  return mp.CLEAN
end
mp.set_mpattributeex("Lua:fopex_shellter_trick", L1_1)
return mp.INFECTED
