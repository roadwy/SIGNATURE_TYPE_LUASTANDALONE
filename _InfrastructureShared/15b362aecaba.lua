local L0_0, L1_1, L2_2
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.GetProcessCommandLine(L1_1.ppid))
    L0_0 = L2_2
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, "/create", 1, true)
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L0_0, "cmd.exe", 1, true)
      if L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L2_2 = L2_2(L0_0, "wordpad.exe", 1, true)
        if L2_2 then
          L2_2 = string
          L2_2 = L2_2.find
          L2_2 = L2_2(L0_0, "/sc", 1, true)
          if L2_2 then
            L2_2 = string
            L2_2 = L2_2.find
            L2_2 = L2_2(L0_0, "/tr", 1, true)
            if L2_2 then
              L2_2 = string
              L2_2 = L2_2.find
              L2_2 = L2_2(L0_0, "/st", 1, true)
              if L2_2 then
                L2_2 = string
                L2_2 = L2_2.find
                L2_2 = L2_2(L0_0, "/sd", 1, true)
                if L2_2 then
                  L2_2 = bm
                  L2_2 = L2_2.request_SMS
                  L2_2(L1_1.ppid, "M")
                  L2_2 = bm
                  L2_2 = L2_2.add_action
                  L2_2("SmsAsyncScanEvent", 1)
                  L2_2 = bm
                  L2_2 = L2_2.get_process_relationships
                  L2_2 = L2_2()
                  for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
                    if _FORV_7_.ppid ~= nil then
                      bm.request_SMS(_FORV_7_.ppid, "M")
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
