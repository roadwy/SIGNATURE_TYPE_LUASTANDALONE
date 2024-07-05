if peattributes.reads_vdll_code or mp.get_mpattribute("SIGATTR:Rogue:Win32/FakePAV_1") or mp.get_mpattribute("LUA:StrangeImportRVA") or mp.get_mpattribute("PACKED:ASPROTECT") or mp.get_mpattribute("PACKED:UPX") then
  if mp.get_mpattribute("RPF:PEHasIOAVURL") then
    mp.set_mpattribute("HSTR:Rogue:Win32/FakePAV.A1")
    return mp.INFECTED
  else
    if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
      if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "java.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "javaw.exe" then
        mp.set_mpattribute("HSTR:Rogue:Win32/FakePAV.A5")
        return mp.CLEAN
      elseif string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "wscript.exe" then
        mp.set_mpattribute("HSTR:Rogue:Win32/FakePAV.A5")
        return mp.INFECTED
      end
    end
    mp.set_mpattribute("HSTR:Rogue:Win32/FakePAV.A2")
  end
elseif mp.get_mpattribute("RPF:PEHasIOAVURL") then
  mp.set_mpattribute("HSTR:Rogue:Win32/FakePAV.A3")
else
  mp.set_mpattribute("HSTR:Rogue:Win32/FakePAV.A4")
end
return mp.CLEAN
