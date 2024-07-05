local L0_0, L1_1
L0_0 = "chrome.exe|msedge.exe|firefox.exe|iexplore.exe"
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_SCANREASON)
if L1_1 == mp.SCANREASON_ONOPEN then
  L1_1 = L0_0.find
  L1_1 = L1_1(L0_0, mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
    if string.sub(L1_1, -3) ~= nil and ({
      ["vbs"] = true,
      ["ps1"] = true,
      [".js"] = true,
      ["jse"] = true,
      ["vbe"] = true
    })[string.sub(L1_1, -3)] == true then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
