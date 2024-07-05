local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
L3_3 = string
L3_3 = L3_3.lower
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = bm
L5_5 = L5_5.get_imagepath
L11_11 = L5_5()
L11_11 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L5_5())
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L5_5()))
if L2_2 ~= nil and L3_3 ~= nil then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if not L4_4 then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L3_3
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  end
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = bm
L4_4 = L4_4.get_process_relationships
L5_5 = L4_4()
if L5_5 ~= nil then
  for L9_9, L10_10 in L6_6(L7_7) do
    L11_11 = L10_10.image_path
    if L11_11 ~= nil then
      L11_11 = L10_10.reason
      if L11_11 == bm.RELATIONSHIP_INJECTION then
        L11_11 = string
        L11_11 = L11_11.lower
        L11_11 = L11_11(L10_10.image_path)
        if string.find(L11_11, "\\gameguard\\gamemon64.des", -24, true) or string.find(L11_11, "\\system32\\mrt.exe", -17, true) or string.find(L11_11, "\\asep_inv.exe", -13, true) or string.find(L11_11, "\\mpsigstub.exe", -14, true) or string.find(L11_11, "\\gameguard\\gamemon.des", -22, true) then
          return mp.CLEAN
        end
        L1_1 = L10_10.ppid
      end
    end
  end
end
if L4_4 ~= nil then
  for L9_9, L10_10 in L6_6(L7_7) do
    L11_11 = L10_10.image_path
    if L11_11 ~= nil then
      L11_11 = string
      L11_11 = L11_11.lower
      L11_11 = L11_11(MpCommon.PathToWin32Path(L10_10.image_path))
      L0_0 = L11_11
      L11_11 = string
      L11_11 = L11_11.find
      L11_11 = L11_11(L0_0, "\\mcafee\\systemcore\\mfehcs.exe", -29, true)
      if not L11_11 then
        L11_11 = string
        L11_11 = L11_11.find
        L11_11 = L11_11(L0_0, "(x86)\\pharossystems\\printscout\\ctskmstr.exe", -43, true)
        if not L11_11 then
          L11_11 = string
          L11_11 = L11_11.find
          L11_11 = L11_11(L0_0, "(x86)\\hp\\printscout\\ctskmstr.exe", -32, true)
          if not L11_11 then
            L11_11 = string
            L11_11 = L11_11.find
            L11_11 = L11_11(L0_0, "\\mcafee\\endpoint security\\threat prevention\\mfetp.exe", -53, true)
            if not L11_11 then
              L11_11 = string
              L11_11 = L11_11.find
              L11_11 = L11_11(L0_0, "\\anti-malware\\mbamservice.exe", -29, true)
              if not L11_11 then
                L11_11 = string
                L11_11 = L11_11.find
                L11_11 = L11_11(L0_0, "\\cnext\\radeonsoftware.exe", -25, true)
                if not L11_11 then
                  L11_11 = string
                  L11_11 = L11_11.find
                  L11_11 = L11_11(L0_0, "(x86)\\panda security\\wac\\psanhost.exe", -37, true)
                  if not L11_11 then
                    L11_11 = string
                    L11_11 = L11_11.find
                    L11_11 = L11_11(L0_0, "(x86)\\cloudvolumes\\agent\\svservice.exe", -38, true)
                    if not L11_11 then
                      L11_11 = string
                      L11_11 = L11_11.find
                      L11_11 = L11_11(L0_0, "\\gameguard\\gamemon64.des", -24, true)
                      if not L11_11 then
                        L11_11 = string
                        L11_11 = L11_11.find
                        L11_11 = L11_11(L0_0, "\\gameguard\\gamemon.des", -22, true)
                        if not L11_11 then
                          L11_11 = string
                          L11_11 = L11_11.find
                          L11_11 = L11_11(L0_0, "(x86)\\f-secure\\server security\\", 1, true)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      elseif L11_11 then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
    end
  end
end
if L6_6 then
  L9_9 = false
  if not L6_6 then
    L6_6(L7_7)
  end
end
if L6_6 then
  L9_9 = false
  if not L6_6 and L1_1 ~= nil then
    L6_6(L7_7, L8_8)
    L6_6(L7_7, L8_8)
    L6_6(L7_7)
    return L6_6
  end
end
return L6_6
