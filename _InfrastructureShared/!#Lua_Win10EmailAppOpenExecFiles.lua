local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_PROCESSNAME)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_PROCESSNAME))
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if string.find(L2_2, "appdata\\local\\packages\\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\\localstate\\files\\s0\\", 1, true) ~= nil then
    if ({
      ["runtimebroker.exe"] = true,
      ["hxtsr.exe"] = true
    })[L1_1] == true and string.len(mp.getfilename()) > 4 and (string.lower(string.sub(mp.getfilename(), -4)) == ".exe" or string.lower(string.sub(mp.getfilename(), -4)) == ".jar" or string.lower(string.sub(mp.getfilename(), -4)) == ".zip") then
      mp.set_mpattribute("Lua:Win10MailAppOpenExecFiles")
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
