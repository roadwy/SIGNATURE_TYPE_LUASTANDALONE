if not mp.get_mpattribute("AndroidOS:HSTR:Generality.C") then
  return mp.CLEAN
end
if not mp.get_mpattribute("AndroidOS:HSTR:AndroidElf") then
  if ({
    [".ko"] = "",
    [".o"] = ""
  })[string.sub(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), -5):match("(%.%w+)$")] then
    return mp.CLEAN
  end
  if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("snort", 1, true) then
    return mp.CLEAN
  end
end
if #mp.enum_mpattributesubstring("TEL:Exploit:Android/CVE") == 0 then
  return mp.INFECTED
end
return mp.CLEAN
