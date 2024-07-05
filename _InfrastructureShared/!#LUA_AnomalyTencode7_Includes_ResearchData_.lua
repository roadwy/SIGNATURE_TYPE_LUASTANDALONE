local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  if L1_1 > 0 then
    for L4_4, L5_5 in L1_1(L2_2) do
      L6_6 = string
      L6_6 = L6_6.match
      L6_6 = L6_6(L5_5, "MpInternal_researchdata=TENCODE7=(%w+)$")
      if L6_6 == nil then
        return mp.CLEAN
      end
      if MpCommon.AnomalyEventLookup("AnomalyTencode7", "Tencode7TableMarker", 100) == nil then
        MpCommon.AnomalyEventUpdate("AnomalyTencode7", "Tencode7TableMarker", 1, 1)
        return mp.CLEAN
      end
      if MpCommon.AnomalyEventLookup("AnomalyTencode7", L6_6, 1) == nil then
        MpCommon.AnomalyEventUpdate("AnomalyTencode7", L6_6, 1, 1)
        if MpCommon.SNidSearch(228, L6_6) == true and MpCommon.SNidSearch(228, L6_6) == "!#Tencode7CommonGlobal" then
          return mp.CLEAN
        end
        if MpCommon.AnomalyEventLookup("AnomalyTencode7", "Tencode7TableMarker", 100).UnbiasedTime > 1800 then
          mp.set_mpattribute("Lua:AnomalyPSENew")
          return mp.INFECTED
        end
      else
        MpCommon.AnomalyEventUpdate("AnomalyTencode7", L6_6, MpCommon.AnomalyEventLookup("AnomalyTencode7", L6_6, 1).Count + 1, 1)
        if MpCommon.SNidSearch(228, L6_6) == true and MpCommon.SNidSearch(228, L6_6) == "!#Tencode7CommonGlobal" then
          return mp.CLEAN
        end
        if MpCommon.AnomalyEventLookup("AnomalyTencode7", L6_6, 1).Count == 1 then
          mp.set_mpattribute("Lua:AnomalyPSEObsMal")
          return mp.INFECTED
        end
        if MpCommon.AnomalyEventLookup("AnomalyTencode7", L6_6, 1).Count < 3 and MpCommon.AnomalyEventLookup("AnomalyTencode7", L6_6, 1).UnbiasedTime > 20160 then
          mp.set_mpattribute("Lua:AnomalyPSENotFreq")
          return mp.INFECTED
        end
        if MpCommon.AnomalyEventLookup("AnomalyTencode7", L6_6, 1).LastSeen >= 43200 then
          MpCommon.AnomalyEventUpdate("AnomalyTencode7", L6_6, 1, 1)
          return mp.INFECTED
        end
      end
    end
  end
end
return L1_1
