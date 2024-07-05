local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.len
  L1_1 = L1_1(L2_2)
  if L1_1 > 60 then
    L1_1 = {}
    L1_1["Lua:FileInMicrosoftEdgeCache.A"] = "\\users\\[^\\]+\\appdata\\local\\packages\\microsoft.microsoftedge_8wekyb3d8bbwe\\.+\\#!.+\\microsoftedge\\cache\\.+"
    L1_1["Lua:FileInMicrosoftEdgeDownloadsFolder.A"] = "\\users\\[^\\]+\\appdata\\local\\packages\\microsoft.microsoftedge_8wekyb3d8bbwe\\tempstate\\downloads.*"
    L1_1["Lua:FileInInternetExplorerTemp.A"] = "\\users\\[^\\]+\\appdata\\local\\microsoft\\windows\\temporary internet files\\content.ie5\\.+"
    L1_1["Lua:FileInChromeCache.A"] = "\\users\\[^\\]+\\appdata\\local\\google\\chrome\\user data\\default\\cache\\.+"
    L1_1["Lua:FileInOperaCache.A"] = "\\users\\[^\\]+\\appdata\\local\\opera software\\opera stable\\cache\\.+"
    L1_1["Lua:FileInFilefoxCache.A"] = "\\users\\[^\\]+\\appdata\\local\\mozilla\\firefox\\profiles\\.+%.default\\cache2\\entries\\.+"
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    for L6_6, L7_7 in L3_3(L4_4) do
      if string.match(L2_2, L7_7) then
        mp.set_mpattribute(L6_6)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
