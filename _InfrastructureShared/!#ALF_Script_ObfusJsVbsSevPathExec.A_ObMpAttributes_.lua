local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 300 or L0_0 > 500000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if L1_1 == nil or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == nil then
  return mp.CLEAN
end
if L1_1:find("\\appdata\\local\\temp\\", 1, true) then
  if string.match(L1_1, "\\appdata\\local\\temp\\(.+)"):find("\\", 1, true) then
    return mp.CLEAN
  end
  if mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower() ~= nil then
    if mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower():match("[^\\]+$") ~= nil and ({
      ["wscript.exe"] = "",
      ["cscript.exe"] = ""
    })[mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower():match("[^\\]+$")] then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
