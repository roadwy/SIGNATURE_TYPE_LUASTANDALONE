local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L2_2 = string
L2_2 = L2_2.lower
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = bm
L4_4 = L4_4.get_imagepath
L10_10 = L4_4()
L10_10 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L4_4())
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L4_4()))
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if not L3_3 then
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
      if L10_10 ~= bm.RELATIONSHIP_INJECTION then
        L10_10 = L9_9.reason
      elseif L10_10 == bm.RELATIONSHIP_CREATED then
        L10_10 = string
        L10_10 = L10_10.lower
        L10_10 = L10_10(L9_9.image_path)
        if string.find(L10_10, "\\gameguard\\gamemon64.des", -24, true) or string.find(L10_10, "\\system32\\mrt.exe", -17, true) or string.find(L10_10, "\\asep_inv.exe", -13, true) or string.find(L10_10, "\\mpsigstub.exe", -14, true) or string.find(L10_10, "\\gameguard\\gamemon.des", -22, true) then
          return mp.CLEAN
        end
        if string.find(L10_10, "\\nslookup.exe", -13, true) then
          L1_1 = L9_9.ppid
        end
      end
    end
  end
end
if L3_3 ~= nil then
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9.image_path
    if L10_10 ~= nil then
      L10_10 = string
      L10_10 = L10_10.lower
      L10_10 = L10_10(MpCommon.PathToWin32Path(L9_9.image_path))
      L0_0 = L10_10
      L10_10 = string
      L10_10 = L10_10.find
      L10_10 = L10_10(L0_0, "\\mcafee\\systemcore\\mfehcs.exe", -29, true)
      if not L10_10 then
        L10_10 = string
        L10_10 = L10_10.find
        L10_10 = L10_10(L0_0, "(x86)\\pharossystems\\printscout\\ctskmstr.exe", -43, true)
        if not L10_10 then
          L10_10 = string
          L10_10 = L10_10.find
          L10_10 = L10_10(L0_0, "(x86)\\hp\\printscout\\ctskmstr.exe", -32, true)
          if not L10_10 then
            L10_10 = string
            L10_10 = L10_10.find
            L10_10 = L10_10(L0_0, "\\mcafee\\endpoint security\\threat prevention\\mfetp.exe", -53, true)
            if not L10_10 then
              L10_10 = string
              L10_10 = L10_10.find
              L10_10 = L10_10(L0_0, "\\anti-malware\\mbamservice.exe", -29, true)
              if not L10_10 then
                L10_10 = string
                L10_10 = L10_10.find
                L10_10 = L10_10(L0_0, "\\cnext\\radeonsoftware.exe", -25, true)
                if not L10_10 then
                  L10_10 = string
                  L10_10 = L10_10.find
                  L10_10 = L10_10(L0_0, "(x86)\\panda security\\wac\\psanhost.exe", -37, true)
                  if not L10_10 then
                    L10_10 = string
                    L10_10 = L10_10.find
                    L10_10 = L10_10(L0_0, "(x86)\\cloudvolumes\\agent\\svservice.exe", -38, true)
                    if not L10_10 then
                      L10_10 = string
                      L10_10 = L10_10.find
                      L10_10 = L10_10(L0_0, "\\gameguard\\gamemon64.des", -24, true)
                      if not L10_10 then
                        L10_10 = string
                        L10_10 = L10_10.find
                        L10_10 = L10_10(L0_0, "\\gameguard\\gamemon.des", -22, true)
                        if not L10_10 then
                          L10_10 = string
                          L10_10 = L10_10.find
                          L10_10 = L10_10(L0_0, "(x86)\\f-secure\\server security\\", 1, true)
                        end
                      end
                    end
                  end
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
    L10_10 = sysio
    L10_10 = L10_10.IsFileExists
    L10_10 = L10_10(L0_0)
    if L10_10 then
      L10_10 = mp
      L10_10 = L10_10.IsKnownFriendlyFile
      L10_10 = L10_10(L0_0, true, false)
      if not L10_10 then
        L10_10 = bm
        L10_10 = L10_10.add_related_file
        L10_10(L0_0)
      end
    end
  end
end
if L5_5 then
  L8_8 = false
  if not L5_5 and L1_1 ~= nil then
    L5_5(L6_6, L7_7)
    L5_5(L6_6, L7_7)
    L5_5(L6_6)
    return L5_5
  end
end
return L5_5
