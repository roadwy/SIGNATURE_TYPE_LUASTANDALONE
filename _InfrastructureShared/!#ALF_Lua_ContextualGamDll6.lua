local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = peattributes
  L1_1 = L1_1.isdll
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = peattributes
  L1_1 = L1_1.hasexports
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = pehdr
  L1_1 = L1_1.DataDirectory
  L1_1 = L1_1[1]
  L1_1 = L1_1.Size
  if L1_1 == 0 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_FILENAME)
  if ({
    [".exe"] = true,
    [".dll"] = true,
    [".cpl"] = true,
    [".ocx"] = true,
    [".pyd"] = true,
    [".pyc"] = true,
    [".sys"] = true,
    [".asi"] = true,
    [".xmx"] = true,
    [".arx"] = true,
    [".crx"] = true,
    [".bpi"] = true,
    [".bpl"] = true,
    [".enu"] = true,
    [".jpn"] = true,
    [".tpm"] = true
  })[string.lower(L1_1):sub(-4)] then
    return mp.CLEAN
  end
  if not mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH):find("\160", 1, true) then
    return mp.CLEAN
  end
  if (L1_1:find("^%l%l%l%l%l%l%l%l%l%l+%.%l%l%l$") or L1_1:find("^~%$%l%l%l%l%l+%.%l%l%l$") or L1_1:find("^%w+%.%w+%.%w+%.%w+%.%w+%.%w+%.%w+%.%w+$") or L1_1:find("^%w%w%w%w%w+_? ?%w-%.%w%w%w%w%w+$")) and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msiexec.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "rundll32.exe") then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
