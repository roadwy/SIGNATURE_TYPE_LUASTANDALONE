local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_CONTROL_GUID
L1_1 = L0_0(L1_1, L2_2)
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_SCANREASON
L3_3 = L2_2(L3_3, L4_4)
if L0_0 then
  L4_4 = string
  L4_4 = L4_4.match
  L5_5 = L1_1
  L4_4 = L4_4(L5_5, "cafeefac%-dec7%-0000%-0001%-abcdeffedcba")
  if not L4_4 then
    L4_4 = string
    L4_4 = L4_4.match
    L5_5 = L1_1
    L4_4 = L4_4(L5_5, "08b0e5c0%-4fcb%-11cf%-aaa5%-00401c608501")
    if not L4_4 then
      L4_4 = string
      L4_4 = L4_4.match
      L5_5 = L1_1
      L4_4 = L4_4(L5_5, "d27cdb6e%-ae6d%-11cf%-96b8%-444553540000")
      if not L4_4 then
        L4_4 = string
        L4_4 = L4_4.match
        L5_5 = L1_1
        L4_4 = L4_4(L5_5, "dfeaf541%-f3e1%-4c24%-acac%-99c30715084a")
      end
    end
  elseif L4_4 then
    L4_4 = pcall
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L5_5 = L4_4(L5_5, mp.CONTEXT_DATA_FRAME_URL)
    if L4_4 then
      if string.find(L5_5, ".hopto.org", 7, true) or string.find(L5_5, ".serveftp.com", 7, true) or string.find(L5_5, ".myftp.biz", 7, true) or string.find(L5_5, ".ddnsking.com", 7, true) or string.find(L5_5, ".ddns.net", 7, true) or string.find(L5_5, ".servepics.com", 7, true) then
        if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          mp.aggregate_mpattribute("Context:NoIP")
        end
        mp.aggregate_mpattribute("//MpIsIEVScan")
        return mp.TRUE
      end
      if string.find(L5_5, ".xyz/", 7, true) or string.find(L5_5, ".trade/", 7, true) or string.find(L5_5, ".systems/", 7, true) or string.find(L5_5, ".army/", 7, true) or string.find(L5_5, ".click/", 7, true) or string.find(L5_5, ".space/", 7, true) or string.find(L5_5, ".mobi/", 7, true) then
        if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          mp.aggregate_mpattribute("Context:GenericTLD")
        end
        mp.aggregate_mpattribute("//MpIsIEVScan")
        return mp.TRUE
      end
      if string.find(L5_5, ".asia/", 7, true) or string.find(L5_5, ".bid/", 7, true) or string.find(L5_5, ".cafe/", 7, true) or string.find(L5_5, ".club/", 7, true) or string.find(L5_5, ".coop/", 7, true) or string.find(L5_5, ".desi/", 7, true) or string.find(L5_5, ".farm/", 7, true) or string.find(L5_5, ".film/", 7, true) or string.find(L5_5, ".guru/", 7, true) or string.find(L5_5, ".life/", 7, true) or string.find(L5_5, ".moe/", 7, true) or string.find(L5_5, ".name/", 7, true) or string.find(L5_5, ".news/", 7, true) or string.find(L5_5, ".nyc/", 7, true) or string.find(L5_5, ".tips/", 7, true) or string.find(L5_5, ".top/", 7, true) then
        if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          mp.aggregate_mpattribute("Context:GenericTLD2")
        end
        mp.aggregate_mpattribute("//MpIsIEVScan")
        return mp.TRUE
      end
      if string.find(string.match(L5_5, "http://(.-/)"), "%.%l%l%l%l%l+/") then
        if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          mp.aggregate_mpattribute("Context:GenericLongTLD")
        end
        mp.aggregate_mpattribute("//MpIsIEVScan")
        return mp.TRUE
      end
      if string.find(L5_5, ".com:", 7, true) or string.find(L5_5, ".org:", 7, true) or string.find(L5_5, ".info:", 7, true) or string.find(L5_5, ".net:", 7, true) or string.find(L5_5, ".ca:", 7, true) or string.find(L5_5, ".ws:", 7, true) or string.find(L5_5, ".eu:", 7, true) or string.find(L5_5, ".us:", 7, true) or string.find(L5_5, ".in:", 7, true) or string.find(L5_5, ".vu:", 7, true) or string.find(L5_5, ".br:", 7, true) or string.find(L5_5, ".ru:", 7, true) or string.find(L5_5, ".pw:", 7, true) then
        if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          mp.aggregate_mpattribute("Context:PortTLD")
        end
        mp.aggregate_mpattribute("//MpIsIEVScan")
        return mp.TRUE
      end
      if string.find(L5_5, ".cf/", 7, true) or string.find(L5_5, ".gq/", 7, true) or string.find(L5_5, ".ga/", 7, true) or string.find(L5_5, ".ml/", 7, true) or string.find(L5_5, ".eu/", 7, true) or string.find(L5_5, ".in/", 7, true) or string.find(L5_5, ".me/", 7, true) then
        if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          mp.aggregate_mpattribute("Context:CountryCodeTLD")
        end
        mp.aggregate_mpattribute("//MpIsIEVScan")
        return mp.TRUE
      end
      if string.find(L5_5, ".ag/", 7, true) or string.find(L5_5, ".am/", 7, true) or string.find(L5_5, ".at/", 7, true) or string.find(L5_5, ".be/", 7, true) or string.find(L5_5, ".bg/", 7, true) or string.find(L5_5, ".bz/", 7, true) or string.find(L5_5, ".cc/", 7, true) or string.find(L5_5, ".ch/", 7, true) or string.find(L5_5, ".cz/", 7, true) or string.find(L5_5, ".dk/", 7, true) or string.find(L5_5, ".ec/", 7, true) or string.find(L5_5, ".eg/", 7, true) or string.find(L5_5, ".es/", 7, true) or string.find(L5_5, ".fi/", 7, true) or string.find(L5_5, ".fm/", 7, true) or string.find(L5_5, ".gr/", 7, true) or string.find(L5_5, ".gs/", 7, true) or string.find(L5_5, ".hr/", 7, true) or string.find(L5_5, ".hu/", 7, true) or string.find(L5_5, ".id/", 7, true) or string.find(L5_5, ".il/", 7, true) or string.find(L5_5, ".io/", 7, true) or string.find(L5_5, ".ir/", 7, true) or string.find(L5_5, ".it/", 7, true) or string.find(L5_5, ".la/", 7, true) or string.find(L5_5, ".lt/", 7, true) or string.find(L5_5, ".lu/", 7, true) or string.find(L5_5, ".ms/", 7, true) or string.find(L5_5, ".mx/", 7, true) or string.find(L5_5, ".my/", 7, true) or string.find(L5_5, ".nl/", 7, true) or string.find(L5_5, ".no/", 7, true) or string.find(L5_5, ".ph/", 7, true) or string.find(L5_5, ".pl/", 7, true) or string.find(L5_5, ".pt/", 7, true) or string.find(L5_5, ".pw/", 7, true) or string.find(L5_5, ".se/", 7, true) or string.find(L5_5, ".sk/", 7, true) or string.find(L5_5, ".so/", 7, true) or string.find(L5_5, ".th/", 7, true) or string.find(L5_5, ".tk/", 7, true) or string.find(L5_5, ".tn/", 7, true) or string.find(L5_5, ".to/", 7, true) or string.find(L5_5, ".tt/", 7, true) or string.find(L5_5, ".ua/", 7, true) or string.find(L5_5, ".uk/", 7, true) or string.find(L5_5, ".us/", 7, true) or string.find(L5_5, ".vn/", 7, true) or string.find(L5_5, ".ws/", 7, true) then
        if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          mp.aggregate_mpattribute("Context:CountryCodeTLD2")
        end
        mp.aggregate_mpattribute("//MpIsIEVScan")
        return mp.TRUE
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.FALSE
return L4_4
