if pe.isdynamic_va(pevars.sigaddr) then
  if 0 ~= pe.query_import(pe.IMPORT_STATIC, 1589549540) then
    return mp.INFECTED
  end
  if 0 ~= pe.query_import(pe.IMPORT_STATIC, 3150467781) then
    return mp.INFECTED
  end
end
return mp.CLEAN
