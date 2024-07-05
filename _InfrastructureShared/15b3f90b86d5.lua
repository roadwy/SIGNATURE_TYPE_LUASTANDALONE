local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.GetProcessCommandLine
    L3_3 = L1_1.ppid
    L2_2 = L2_2(L3_3)
    if L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
    L0_0 = L3_3
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L0_0
    L5_5 = "/create"
    L3_3 = L3_3(L4_4, L5_5, 1, true)
    if L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L0_0
      L5_5 = "cmd.exe"
      L3_3 = L3_3(L4_4, L5_5, 1, true)
      if L3_3 then
        L3_3 = string
        L3_3 = L3_3.find
        L4_4 = L0_0
        L5_5 = "wordpad.exe"
        L3_3 = L3_3(L4_4, L5_5, 1, true)
        if L3_3 then
          L3_3 = string
          L3_3 = L3_3.find
          L4_4 = L0_0
          L5_5 = "/sc"
          L3_3 = L3_3(L4_4, L5_5, 1, true)
          if L3_3 then
            L3_3 = string
            L3_3 = L3_3.find
            L4_4 = L0_0
            L5_5 = "/tr"
            L3_3 = L3_3(L4_4, L5_5, 1, true)
            if L3_3 then
              L3_3 = string
              L3_3 = L3_3.find
              L4_4 = L0_0
              L5_5 = "/st"
              L3_3 = L3_3(L4_4, L5_5, 1, true)
              if L3_3 then
                L3_3 = string
                L3_3 = L3_3.find
                L4_4 = L0_0
                L5_5 = "/sd"
                L3_3 = L3_3(L4_4, L5_5, 1, true)
                if L3_3 then
                  L3_3 = bm
                  L3_3 = L3_3.request_SMS
                  L4_4 = L1_1.ppid
                  L5_5 = "M"
                  L3_3(L4_4, L5_5)
                  L3_3 = bm
                  L3_3 = L3_3.get_imagepath
                  L3_3 = L3_3()
                  L4_4 = bm
                  L4_4 = L4_4.get_process_relationships
                  L5_5 = L4_4()
                  for _FORV_9_, _FORV_10_ in ipairs(L5_5) do
                    if _FORV_10_.image_path == L3_3 then
                      bm.request_SMS(L1_1.ppid, "M")
                    end
                  end
                  return mp.INFECTED
                end
              end
            end
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
