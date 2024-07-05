if #mp.enum_mpattributesubstring("SCPT:IncontrollerA") >= 5 or #mp.enum_mpattributesubstring("SCPT:IncontrollerB") == 4 or #mp.enum_mpattributesubstring("SCPT:IncontrollerC") == 4 and #mp.enum_mpattributesubstring("SCPT:IncontrollerD") > 0 or #mp.enum_mpattributesubstring("SCPT:IncontrollerE") == 5 or #mp.enum_mpattributesubstring("SCPT:IncontrollerF") == 1 and 0 < #mp.enum_mpattributesubstring("SCPT:IncontrollerG") or 4 < #mp.enum_mpattributesubstring("SCPT:IncontrollerH") or #mp.enum_mpattributesubstring("SCPT:IncontrollerI") == 5 and 0 < #mp.enum_mpattributesubstring("SCPT:IncontrollerJ") or #mp.enum_mpattributesubstring("SCPT:IncontrollerK") == 3 or 4 < #mp.enum_mpattributesubstring("SCPT:IncontrollerL") then
  return mp.INFECTED
end
return mp.CLEAN
