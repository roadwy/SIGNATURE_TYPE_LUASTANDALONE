local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = string
L2_2 = L2_2.lower
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = bm
L4_4 = L4_4.get_imagepath
L10_10 = L4_4()
L10_10 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L4_4())
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L4_4()))
if L1_1 ~= nil and L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if not L3_3 then
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L2_2
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  end
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L3_3()
if L4_4 ~= nil then
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9.image_path
    if L10_10 ~= nil then
      L10_10 = L9_9.reason
      if L10_10 == bm.RELATIONSHIP_INJECTION then
        L10_10 = string
        L10_10 = L10_10.lower
        L10_10 = L10_10(L9_9.image_path)
        if string.find(L10_10, "\\gameguard\\gamemon64.des", -24, true) or string.find(L10_10, "\\gameguard\\gamemon.des", -22, true) then
          return mp.CLEAN
        end
      end
    end
  end
end
if L3_3 ~= nil then
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9.image_path
    if L10_10 ~= nil then
      L10_10 = L9_9.reason
      if L10_10 == bm.RELATIONSHIP_INJECTION then
        L10_10 = string
        L10_10 = L10_10.lower
        L10_10 = L10_10(MpCommon.PathToWin32Path(bm.get_imagepath()))
        L0_0 = L10_10
        L10_10 = string
        L10_10 = L10_10.find
        L10_10 = L10_10(L0_0, "\\cnext\\radeonsoftware.exe", -25, true)
        if not L10_10 then
          L10_10 = string
          L10_10 = L10_10.find
          L10_10 = L10_10(L0_0, "\\steam\\steam.exe", -16, true)
          if not L10_10 then
            L10_10 = string
            L10_10 = L10_10.find
            L10_10 = L10_10(L0_0, "\\tychon\\tychoncoreservice.exe", -29, true)
            if not L10_10 then
              L10_10 = string
              L10_10 = L10_10.find
              L10_10 = L10_10(L0_0, "\\system32\\userinit.exe", -22, true)
              if not L10_10 then
                L10_10 = string
                L10_10 = L10_10.find
                L10_10 = L10_10(L0_0, "\\vagrant\\bin\\vagrant.exe", -24, true)
                if not L10_10 then
                  L10_10 = string
                  L10_10 = L10_10.find
                  L10_10 = L10_10(L0_0, "\\gameguard\\gamemon64.des", -24, true)
                  if not L10_10 then
                    L10_10 = string
                    L10_10 = L10_10.find
                    L10_10 = L10_10(L0_0, "\\gameguard\\gamemon.des", -22, true)
                  end
                end
              end
            end
          end
        elseif L10_10 then
          L10_10 = mp
          L10_10 = L10_10.CLEAN
          return L10_10
        end
      end
    end
  end
end
if L5_5 then
  L8_8 = false
  if not L5_5 then
    L5_5(L6_6)
  end
end
if L5_5 then
  L8_8 = false
  if not L5_5 then
    return L5_5
  end
end
return L5_5
