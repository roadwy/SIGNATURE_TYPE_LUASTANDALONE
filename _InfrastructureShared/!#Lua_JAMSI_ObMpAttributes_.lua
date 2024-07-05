if mp.get_mpattribute("MpIsJScriptEncodeAMSIScan") or mp.get_mpattribute("MpIsVBScriptEncodeAMSIScan") or mp.get_mpattribute("MpIsVBScriptAMSIScan") or mp.get_mpattribute("MpIsJScriptAMSIScan") then
  return mp.INFECTED
end
return mp.CLEAN
