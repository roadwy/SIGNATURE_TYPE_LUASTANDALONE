local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = peattributes
  L1_1 = L1_1.isdll
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 > 17664 and L1_1 < 1200128 then
    L2_2 = pe
    L2_2 = L2_2.query_import
    L3_3 = L2_2
    L3_3 = L3_3(pe.IMPORT_STATIC, 4288984855)
    if 0 == L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = L2_2
    L3_3 = L3_3(pe.IMPORT_STATIC, 3419395426)
    if 0 == L3_3 then
      L3_3 = L2_2
      L3_3 = L3_3(pe.IMPORT_STATIC, 1058758707)
      if 0 == L3_3 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
    end
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
    if (string.sub(L3_3, -4) == ".zip" or string.sub(L3_3, -4) == ".exe") and (L3_3:find("aupost_info_", 1, true) ~= nil or L3_3:find("auspost_info_", 1, true) ~= nil or L3_3:find("enel_bolletta", 1, true) ~= nil or L3_3:find("postdanmark_pakkeboksen", 1, true) ~= nil or L3_3:find("postnord_info_", 1, true) ~= nil or L3_3:find("posten_adresselapp", 1, true) ~= nil or L3_3:find("turkcell_fatura", 1, true) ~= nil or L3_3:find("turkcell_efatura", 1, true) ~= nil or L3_3:find("turkcell_mart_fatura", 1, true) ~= nil or L3_3:find("carta_certificada", 1, true) ~= nil or L3_3:find("dhl_versandschein", 1, true) ~= nil or L3_3:find("turkcell_subat_fatura", 1, true) ~= nil or L3_3:find("poczta_track", 1, true) ~= nil) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
