local L0_0, L1_1, L2_2
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
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
    if (string.sub(L2_2, -4) == ".zip" or string.sub(L2_2, -4) == ".rar" or string.sub(L2_2, -4) == ".exe" or string.sub(L2_2, -4) == ".pif" or string.sub(L2_2, -4) == ".scr") and (L2_2:find("adres", 1, true) ~= nil or L2_2:find("pacchetto", 1, true) ~= nil or L2_2:find("fatura", 1, true) ~= nil or L2_2:find("carta_certificada", 1, true) ~= nil or L2_2:find("notice_", 1, true) ~= nil or L2_2:find("bolletta_", 1, true) ~= nil or L2_2:find("enel_bolletta", 1, true) ~= nil or L2_2:find("info_", 1, true) ~= nil or L2_2:find("turkcell_", 1, true) ~= nil or L2_2:find("posten_", 1, true) ~= nil or L2_2:find("forsandelse", 1, true) ~= nil or L2_2:find("forsendelse", 1, true) ~= nil or L2_2:find("leverans", 1, true) ~= nil or L2_2:find("postnord_", 1, true) ~= nil or L2_2:find("adresselapp", 1, true) ~= nil or L2_2:find("postdanmark_", 1, true) ~= nil or L2_2:find("auspost_", 1, true) ~= nil or L2_2:find("aupost_", 1, true) ~= nil or L2_2:find("infringement_", 1, true) ~= nil) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
