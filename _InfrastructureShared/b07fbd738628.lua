if pe.isdynamic_va(pevars.sigaddr) and 0 ~= pe.query_import(pe.IMPORT_STATIC, 1589549540) then
  return mp.INFECTED
end
return mp.CLEAN
