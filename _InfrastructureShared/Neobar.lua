local L0_0
function L0_0(A0_1)
  local L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9
  L1_2 = sysio
  L1_2 = L1_2.RegOpenKey
  L2_3 = A0_1
  L1_2 = L1_2(L2_3)
  if L1_2 then
    L2_3 = sysio
    L2_3 = L2_3.RegEnumValues
    L2_3 = L2_3(L3_4)
    for L6_7, L7_8 in L3_4(L4_5) do
      L8_9 = string
      L8_9 = L8_9.lower
      L8_9 = L8_9(L7_8)
      if string.sub(L8_9, -33) == "\\mozilla firefox\\browser\\features" or string.sub(L8_9, -24) == "\\google\\chrome\\user data" or string.sub(L8_9, -19) == "\\appdata\\local\\temp" or string.sub(L8_9, -13) == "\\windows\\temp" or string.sub(L8_9, -29) == "\\appdata\\locallow\\ytbeadblock" or string.sub(L8_9, -29) == "\\appdata\\locallow\\tubealckset" or string.sub(L8_9, -26) == "\\appdata\\locallow\\tbeackst" or string.sub(L8_9, -26) == "\\appdata\\locallow\\medserch" or string.sub(L8_9, -26) == "\\appdata\\locallow\\coynbolc" or string.sub(L8_9, -26) == "\\appdata\\locallow\\tutubebl" or string.sub(L8_9, -25) == "\\appdata\\locallow\\tmasech" or string.sub(L8_9, -25) == "\\appdata\\locallow\\kontodn" or string.sub(L8_9, -25) == "\\appdata\\locallow\\tsearch" or string.sub(L8_9, -24) == "\\appdata\\locallow\\tserch" or string.sub(L8_9, -24) == "\\appdata\\locallow\\msaver" or string.sub(L8_9, -23) == "\\appdata\\locallow\\vk_ok" or string.sub(L8_9, -20) == "\\appdata\\locallow\\yd" or string.sub(L8_9, -18) == "\\youtube adblockie" or string.sub(L8_9, -18) == "\\youtube adblockun" or string.sub(L8_9, -17) == "\\youtube adblocku" or string.sub(L8_9, -16) == "\\youtube adblock" or string.sub(L8_9, -17) == "\\youtubeadblockie" or string.sub(L8_9, -17) == "\\youtubeadblockun" or string.sub(L8_9, -16) == "\\youtubeadblocku" or string.sub(L8_9, -15) == "\\youtubeadblock" or string.sub(L8_9, -13) == "\\ytubeablckie" or string.sub(L8_9, -13) == "\\ytubeablckun" or string.sub(L8_9, -12) == "\\ytubeablcku" or string.sub(L8_9, -11) == "\\yubealckie" or string.sub(L8_9, -11) == "\\yubealckun" or string.sub(L8_9, -10) == "\\yubealcku" or string.sub(L8_9, -17) == "\\torrent searchie" or string.sub(L8_9, -17) == "\\torrent searchun" or string.sub(L8_9, -16) == "\\torrent searchu" or string.sub(L8_9, -15) == "\\torrent search" or string.sub(L8_9, -13) == "\\mediaserchie" or string.sub(L8_9, -13) == "\\mediaserchun" or string.sub(L8_9, -12) == "\\mediaserchu" or string.sub(L8_9, -10) == "\\mafarchie" or string.sub(L8_9, -10) == "\\mafarchun" or string.sub(L8_9, -10) == "\\mafarchu2" or string.sub(L8_9, -9) == "\\mafarchu" or string.sub(L8_9, -10) == "\\msearchie" or string.sub(L8_9, -10) == "\\msearchun" or string.sub(L8_9, -9) == "\\msearchu" or string.sub(L8_9, -10) == "\\tsearchie" or string.sub(L8_9, -10) == "\\tsearchun" or string.sub(L8_9, -9) == "\\tsearchu" or string.sub(L8_9, -8) == "\\tsearch" or string.sub(L8_9, -16) == "\\vk ok adblockie" or string.sub(L8_9, -16) == "\\vk ok adblockun" or string.sub(L8_9, -15) == "\\vk ok adblocku" or string.sub(L8_9, -14) == "\\vk ok adblock" or string.sub(L8_9, -16) == "\\vkontodnblockie" or string.sub(L8_9, -16) == "\\vkontodnblockun" or string.sub(L8_9, -15) == "\\vkontodnblocku" or string.sub(L8_9, -14) == "\\vkokadblockie" or string.sub(L8_9, -14) == "\\vkokadblockun" or string.sub(L8_9, -13) == "\\vkokadblocku" or string.sub(L8_9, -12) == "\\vkokadblock" or string.sub(L8_9, -31) == "\\programdata\\torrent_search_ped" or string.sub(L8_9, -19) == "\\youtube downloader" or string.sub(L8_9, -12) == "\\media saver" or string.sub(L8_9, -7) == "\\futest" or string.find(L7_8, "\\YiuAsk", 1, true) or string.find(L7_8, "\\conyanBloc", 1, true) or string.find(L7_8, "\\Windows\\Temp", 1, true) or string.find(L7_8, "\\AppData\\Local\\Temp", 1, true) or string.find(L7_8, "\\Google\\Chrome\\User Data", 1, true) or string.find(L7_8, "\\Mozilla Firefox\\browser\\features", 1, true) or string.find(L7_8, "\\Mozilla\\Firefox\\Profiles\\", 1, true) then
        MpDetection.ReportResource("regkeyvalue", A0_1 .. "\\\\" .. L7_8, 2317, false)
      end
    end
  end
end
L0_0("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
L0_0("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
