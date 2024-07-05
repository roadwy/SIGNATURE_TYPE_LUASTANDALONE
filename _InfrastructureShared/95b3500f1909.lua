local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L7_7 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1())
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\werfault.exe"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "\\debugger"
  L4_4 = 1
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\\vmmap"
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L3_3 = "\\thdump"
      L4_4 = 1
      L5_5 = true
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L3_3 = "\\epa\\gtbinjector"
        L4_4 = 1
        L5_5 = true
        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L3_3 = "\\uwpinject.exe"
          L4_4 = 1
          L5_5 = true
          L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L3_3 = "\\ra64app.exe"
            L4_4 = 1
            L5_5 = true
            L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L3_3 = "\\bin\\dllinjector64.exe"
              L4_4 = 1
              L5_5 = true
              L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L3_3 = "\\ftwlaunch"
                L4_4 = 1
                L5_5 = true
                L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
              end
            end
          end
        end
      end
    end
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[5]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L1_1 = L1_1.utf8p1
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[2]
        L1_1 = L1_1.utf8p2
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.utf8p1
        L3_3 = string
        L3_3 = L3_3.match
        L4_4 = string
        L4_4 = L4_4.lower
        L5_5 = L1_1
        L4_4 = L4_4(L5_5)
        L5_5 = " -p (%d+)"
        L3_3 = L3_3(L4_4, L5_5)
        if not L3_3 then
          L4_4 = mp
          L4_4 = L4_4.CLEAN
          return L4_4
        end
        L4_4 = string
        L4_4 = L4_4.match
        L5_5 = L2_2
        L6_6 = "targetprocessppid:(%d+):(%d+)"
        L5_5 = L4_4(L5_5, L6_6)
        if not L4_4 or not L5_5 then
          L6_6 = mp
          L6_6 = L6_6.CLEAN
          return L6_6
        end
        if L3_3 == L4_4 then
          L6_6 = bm
          L6_6 = L6_6.get_current_process_startup_info
          L6_6 = L6_6()
          L7_7 = bm
          L7_7 = L7_7.request_SMS
          L7_7(L6_6.ppid, "M")
          L7_7 = bm
          L7_7 = L7_7.add_action
          L7_7("SmsAsyncScanEvent", 1000)
          L7_7 = string
          L7_7 = L7_7.format
          L7_7 = L7_7("pid:%s,ProcessStart:%s", L4_4, L5_5)
          bm.trigger_sig("BMGenericCodeInjector.A", "Behavior:Win32/GenCodeInjector.E", L7_7)
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
