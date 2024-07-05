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
L4_4 = pcall
L5_5 = mp
L5_5 = L5_5.get_contextdata
L5_5 = L4_4(L5_5, mp.CONTEXT_DATA_CONTROL_VERSION)
if L0_0 and L4_4 then
  if string.match(L1_1, "08b0e5c0%-4fcb%-11cf%-aaa5%-00401c608501") or string.match(L1_1, "8ad9c840%-044e%-11d1%-b3e9%-00805f499d93") or string.sub(L1_1, 1, 9) == "cafeefac-" then
    if mp.shr64(L5_5, 48) == 6 then
      if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
        mp.aggregate_mpattribute("Context:MSJVM")
      end
      mp.aggregate_mpattribute("//MpIsIEVScan")
      return mp.TRUE
    end
    if mp.shr64(L5_5, 48) == 10 and mp.bitand(mp.shr64(L5_5, 32), 65535) < 75 then
      if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
        mp.aggregate_mpattribute("Context:MSJVM.B")
      end
      mp.aggregate_mpattribute("//MpIsIEVScan")
      return mp.TRUE
    end
    if mp.shr64(L5_5, 48) == 11 and mp.bitand(mp.shr64(L5_5, 32), 65535) < 161 then
      if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
        mp.aggregate_mpattribute("Context:MSJVM.B")
      end
      mp.aggregate_mpattribute("//MpIsIEVScan")
      return mp.TRUE
    end
  end
  if string.match(L1_1, "d27cdb6e%-ae6d%-11cf%-96b8%-444553540000") and (mp.shr64(L5_5, 48) < 28 or mp.shr64(L5_5, 48) == 28 and mp.bitand(L5_5, 65535) < 161) then
    if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
      mp.aggregate_mpattribute("Context:ShockwaveFlash")
    end
    mp.aggregate_mpattribute("//MpIsIEVScan")
    return mp.TRUE
  end
  if string.match(L1_1, "ca8a9780%-280d%-11cf%-a24d%-444553540000") and mp.shr64(L5_5, 48) < 11 then
    if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
      mp.aggregate_mpattribute("Context:AcroPDF")
    end
    mp.aggregate_mpattribute("//MpIsIEVScan")
    return mp.TRUE
  end
end
return mp.FALSE
