local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -4
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 and (L1_1 == ".exe" or L1_1 == ".scr" or L1_1 == ".com") then
    L2_2 = {
      L3_3,
      L4_4,
      L5_5,
      L6_6,
      L7_7,
      L8_8,
      L9_9,
      L10_10,
      L11_11,
      L12_12,
      "SIGATTR:VirTool:MSIL",
      "SLFPER:MSIL",
      "ALF:VirTool:MSIL",
      "Lowfi:HSTR:MSIL/Obfuscator",
      "ALF:Backdoor:MSIL/",
      "AGGR:HSTR:MSIL/PossibleKeylogger",
      "SIGATTR:LoadAssemblyCrypt.A",
      "SIGATTR:LoadAssembly.B"
    }
    L3_3 = "ALF:Trojan:MSIL/"
    L10_10 = "Lowfi:HSTR:Win32/AgileDotNetObfuscator"
    L11_11 = "ALF:TrojanDownloader:MSIL"
    L12_12 = "ALF:HackTool:MSIL"
    L3_3 = 0
    for L7_7, L8_8 in L4_4(L5_5) do
      L10_10 = L8_8
      if L9_9 ~= nil then
        L10_10 = type
        L11_11 = L9_9
        L10_10 = L10_10(L11_11)
        if L10_10 == "table" then
          L10_10 = #L9_9
          L3_3 = L3_3 + L10_10
          if L3_3 >= 2 then
            L10_10 = mp
            L10_10 = L10_10.INFECTED
            return L10_10
          end
        end
      end
    end
    L10_10 = "Lowfi:HSTR:Win32"
    L11_11 = "Trojan:MSIL/AgentTesla"
    L12_12 = "HSTR:DESCryptoServiceProvider.A"
    for L9_9, L10_10 in L6_6(L7_7) do
      L11_11 = mp
      L11_11 = L11_11.enum_mpattributesubstring
      L12_12 = L10_10
      L11_11 = L11_11(L12_12)
      if L11_11 ~= nil then
        L12_12 = type
        L12_12 = L12_12(L11_11)
        if L12_12 == "table" then
          L12_12 = #L11_11
          if L3_3 == 0 and L5_5 >= 3 then
            L12_12 = mp
            L12_12 = L12_12.INFECTED
            return L12_12
          elseif L3_3 == 1 and L5_5 >= 2 then
            L12_12 = mp
            L12_12 = L12_12.INFECTED
            return L12_12
          end
        end
      end
    end
    for L10_10, L11_11 in L7_7(L8_8) do
      L12_12 = mp
      L12_12 = L12_12.enum_mpattributesubstring
      L12_12 = L12_12(L11_11)
      if L12_12 ~= nil and type(L12_12) == "table" then
        if L3_3 == 0 and L5_5 >= 4 then
          return mp.INFECTED
        elseif L3_3 == 1 and L5_5 >= 3 then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
