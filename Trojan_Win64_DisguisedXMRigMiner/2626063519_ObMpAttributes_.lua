local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = peattributes
L0_0 = L0_0.is_process
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.UfsGetMetadataStringA
L1_1 = "LUAUFS:MinerDets"
L2_2 = true
L1_1 = L0_0(L1_1, L2_2)
if L0_0 == 0 and L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.enum_mpattributesubstring
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  if L3_3 > 0 then
    for L6_6, L7_7 in L3_3(L4_4) do
      L8_8 = string
      L8_8 = L8_8.lower
      L9_9 = L7_7
      L8_8 = L8_8(L9_9)
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L8_8
      L11_11 = "torrent"
      L12_12 = 1
      L13_13 = true
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      if L9_9 ~= nil then
        L9_9 = mp
        L9_9 = L9_9.CLEAN
        return L9_9
      end
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L8_8
      L11_11 = "coinminer"
      L12_12 = 1
      L13_13 = true
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      if L9_9 == nil then
        L9_9 = string
        L9_9 = L9_9.find
        L10_10 = L8_8
        L11_11 = "namedminer"
        L12_12 = 1
        L13_13 = true
        L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
        if L9_9 == nil then
          L9_9 = string
          L9_9 = L9_9.find
          L10_10 = L8_8
          L11_11 = "miner"
          L12_12 = 1
          L13_13 = true
          L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
          if L9_9 ~= nil then
            L9_9 = mp
            L9_9 = L9_9.CLEAN
            return L9_9
          end
        end
      end
    end
  end
end
L6_6 = ""
L7_7 = false
L8_8 = {}
L8_8["0.0.com"] = true
L8_8.kmspico = true
L8_8.microsoft = true
L8_8["microsoft corporation"] = true
L8_8["oracle corporation"] = true
L8_8["www.360.com"] = true
L8_8["www.google.com"] = true
L8_8["www.java.com"] = true
L8_8["www.realtek.com"] = true
L8_8["www.micorosoft.com"] = true
L8_8["www.microsoft.com"] = true
L9_9 = {}
L9_9["dllhostex.exe"] = true
L9_9["explorer.exe"] = true
L9_9["java.exe"] = true
L9_9["microsofthost.exe"] = true
L9_9["rtkauduservice.exe"] = true
L9_9["runtimebroker.exe"] = true
L9_9["safe.exe"] = true
L9_9["services.exe"] = true
L9_9["system.exe"] = true
L9_9["taskmgr.exe"] = true
L9_9["tiworker.exe"] = true
L9_9.voice = true
L9_9["winx.exe"] = true
L10_10 = {}
L10_10["0 0"] = true
L10_10["com surrogate"] = true
L10_10["google crash handler"] = true
L10_10["host process for windows services"] = true
L10_10["java update"] = true
L10_10["java(tm) platform se binary"] = true
L10_10.kmspico = true
L10_10["realtek hd audio service"] = true
L10_10["runtime broker"] = true
L10_10["services and controller app"] = true
L10_10.svchost = true
L10_10.system = true
L10_10["taskmgr tools"] = true
L10_10.voice = true
L10_10["windows explorer"] = true
L10_10["windows modules installer worker"] = true
L10_10["windows x"] = true
L11_11 = {}
L11_11["google update"] = true
L11_11.java = true
L11_11["microsoft corporation. all rights reserved."] = true
L11_11.microsofthost = true
L11_11.rtkauduservice = true
L11_11["services and controller app"] = true
L11_11.svchost = true
L11_11.system = true
L11_11.taskmgr = true
L11_11.voice = true
L11_11["windows x"] = true
L12_12 = {}
L12_12["https://github.com/bendr0id/xmrigcc/"] = true
L12_12["https://github.com/bendr0id/xmrigcc"] = true
L12_12["https://github.com/bendr0id/xmrigcc-amd"] = true
L12_12["www.xmrig.com"] = true
L13_13 = {}
L13_13["xmrig.exe"] = true
L13_13["xmrig-cuda.dll"] = true
L13_13["xmrigminer.exe"] = true
L14_14 = {}
L14_14["xmrig cpu miner"] = true
L14_14["xmrig cuda miner"] = true
L14_14["xmrig cuda plugin"] = true
L14_14["xmrig miner"] = true
L14_14["xmrig opencl miner"] = true
L14_14["xmrigcc-amd opencl miner"] = true
L14_14["xmrigcc command'n'control server"] = true
L14_14["xmrigcc cpu miner"] = true
L15_15 = {}
L15_15.xmrig = true
L15_15.xmrigcc = true
L16_16 = pe
L16_16 = L16_16.get_versioninfo
L16_16 = L16_16()
if L16_16 ~= nil then
  L7_7 = true
  L6_6 = L16_16.ProductName
  if L3_3 then
    L17_17 = string
    L17_17 = L17_17.lower
    L18_18 = L3_3
    L17_17 = L17_17(L18_18)
  else
  end
  if L4_4 then
    L17_17 = string
    L17_17 = L17_17.lower
    L18_18 = L4_4
    L17_17 = L17_17(L18_18)
  else
  end
  if L5_5 then
    L17_17 = string
    L17_17 = L17_17.lower
    L18_18 = L5_5
    L17_17 = L17_17(L18_18)
  else
  end
  if L6_6 then
    L17_17 = string
    L17_17 = L17_17.lower
    L18_18 = L6_6
    L17_17 = L17_17(L18_18)
    L6_6 = L17_17
  else
    L6_6 = ""
  end
  L17_17 = L8_8[L3_3]
  if not L17_17 then
    L17_17 = L9_9[L4_4]
    if not L17_17 then
      L17_17 = L10_10[L5_5]
      L17_17 = L17_17 or L11_11[L6_6]
    end
  elseif L17_17 then
    L17_17 = mp
    L17_17 = L17_17.INFECTED
    return L17_17
  end
end
L17_17 = string
L17_17 = L17_17.lower
L18_18 = mp
L18_18 = L18_18.getfilename
L19_19 = L18_18()
L17_17 = L17_17(L18_18, L19_19, L18_18())
L19_19 = L17_17
L18_18 = L17_17.match
L19_19 = L18_18(L19_19, "(.+\\)([^\\]+)$")
if string.sub(L19_19, 1, 5) == "xmrig" then
  return mp.CLEAN
end
if L7_7 and (L12_12[L3_3] or L13_13[L4_4] or L14_14[L5_5] or L15_15[L6_6]) then
  mp.set_mpattribute("Miner:HasXMRigFileProperty")
  return mp.CLEAN
end
return mp.INFECTED
