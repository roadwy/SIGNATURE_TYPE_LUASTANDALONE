local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = "rq_ServiceImagePaths"
L1_1 = 172800
L2_2 = 100
L3_3 = sysio
L3_3 = L3_3.EnumerateServices
L3_3 = L3_3()
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = L8_8.ServiceName
  if L9_9 then
    L10_10 = string
    L10_10 = L10_10.lower
    L10_10 = L10_10(sysio.GetCommandLineFromService(L9_9))
    L10_10 = MpCommon.PathToWin32Path(L10_10)
    if L10_10 ~= nil and not IsKeyInRollingQueue(L0_0, L10_10, true) and L10_10:sub(1, 1) ~= "\"" and L10_10:sub(1, 1) ~= "'" and not StringEndsWith(StringSplit(L10_10, " ")[1], ".exe") and not StringEndsWith(StringSplit(L10_10, " ")[1], ".sys") then
      AppendToRollingQueue(L0_0, StringSplit(L10_10, " ")[1], L1_1, L2_2)
      return mp.CLEAN
    end
  end
end
return L4_4
