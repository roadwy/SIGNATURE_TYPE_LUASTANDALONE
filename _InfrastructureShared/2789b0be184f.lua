if pe.get_api_id(pe.get_regval(pe.REG_EAX)) ~= 4111270722 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 7, "\001\000\000\000")
return mp.INFECTED
