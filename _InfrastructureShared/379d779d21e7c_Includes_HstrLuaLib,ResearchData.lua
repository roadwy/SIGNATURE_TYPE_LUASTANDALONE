if MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 6) == true and MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 6) == "#E5EmergencyAntiTampering" then
  set_research_data("E5EmergencyAntiTampering", "true", false)
end
if MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  set_research_data("AggressivePeTrigger", "true", false)
end
return mp.INFECTED
