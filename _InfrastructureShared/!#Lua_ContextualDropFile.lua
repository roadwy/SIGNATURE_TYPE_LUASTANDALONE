local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
    L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
    if string.sub(L2_2, -4) ~= ".exe" then
      return mp.CLEAN
    end
    if string.sub(L1_1, -10) == "\\downloads" or L1_1:find("\\temporary internet files\\", 1, true) ~= nil or L1_1:find("\\inetcache\\", 1, true) ~= nil then
      return mp.CLEAN
    end
    if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "iexplore.exe" then
      mp.set_mpattribute("Lua:ContextualDropFileIE")
    elseif string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "chrome.exe" then
      mp.set_mpattribute("Lua:ContextualDropFileChrome")
    elseif string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "firefox.exe" then
      mp.set_mpattribute("Lua:ContextualDropFileFirefox")
    elseif string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "opera.exe" then
      mp.set_mpattribute("Lua:ContextualDropFileOpera")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
