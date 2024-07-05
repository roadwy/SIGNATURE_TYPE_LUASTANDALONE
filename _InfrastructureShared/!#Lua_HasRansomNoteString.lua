if mp.enum_mpattributesubstring("SCPT:RansomNote:") ~= nil and #mp.enum_mpattributesubstring("SCPT:RansomNote:") >= 5 then
  mp.set_mpattribute("MpDisableCaching")
  return mp.INFECTED
end
return mp.CLEAN
