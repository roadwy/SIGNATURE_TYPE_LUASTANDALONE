if mp.getfilesize() ~= nil and mp.getfilesize() >= 5120 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:ClnWordsCat1") >= 1 or #mp.enum_mpattributesubstring("SCPT:ClnWordsCat1") + #mp.enum_mpattributesubstring("SCPT:ClnWordsCat2") >= 5 or #mp.enum_mpattributesubstring("SCPT:ClnWordsCat3") >= 3 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:RansomNoteCat4") >= 4 and #mp.enum_mpattributesubstring("SCPT:RansomNoteCat1") + #mp.enum_mpattributesubstring("SCPT:RansomNoteCat2") >= 2 and 3 < #mp.enum_mpattributesubstring("SCPT:RansomNoteCat3") + #mp.enum_mpattributesubstring("SCPT:RansomNoteCat5") + #mp.enum_mpattributesubstring("SCPT:RansomNoteCat6") then
  mp.set_mpattribute("MpDisableCaching")
  return mp.INFECTED
end
if mp.get_mpattribute("SCPT:RansomRuyk") and 1 <= #mp.enum_mpattributesubstring("SCPT:RansomNoteCat4") and 1 <= #mp.enum_mpattributesubstring("SCPT:RansomNoteCat3") then
  mp.set_mpattribute("MpDisableCaching")
  return mp.INFECTED
end
return mp.CLEAN
