local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
function L0_0(A0_8, A1_9)
  local L2_10, L4_11
  L2_10 = A1_9 ~= nil and A0_8 ~= nil and L2_10 >= L4_11 and L2_10 == A1_9
  return L2_10
end
function L1_1(A0_12, A1_13)
  return A1_13 ~= nil and A0_12 ~= nil and #A0_12 == #A1_13 and A0_12 == A1_13
end
function L2_2(A0_14, A1_15)
  return A1_15 == "" or A0_14:sub(-#A1_15) == A1_15
end
L3_3 = skip
L3_3 = L3_3.get_contextdata
L4_4 = skip
L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
L3_3 = L3_3(L4_4)
L4_4 = skip
L4_4 = L4_4.get_contextdata
L5_5 = skip
L5_5 = L5_5.CONTEXT_DATA_PROCESSDEVICEPATH
L4_4 = L4_4(L5_5)
L5_5 = skip
L5_5 = L5_5.get_contextdata
L6_6 = skip
L6_6 = L6_6.CONTEXT_DATA_FILEPATH
L5_5 = L5_5(L6_6)
L6_6 = skip
L6_6 = L6_6.get_contextdata
L7_7 = skip
L7_7 = L7_7.CONTEXT_DATA_FILENAME
L6_6 = L6_6(L7_7)
L7_7 = L0_0
L7_7 = L7_7(L4_4, "/usr/lib/gcc")
if L7_7 then
  L7_7 = L1_1
  L7_7 = L7_7(L3_3, "cc1plus")
  if L7_7 then
    L7_7 = L0_0
    L7_7 = L7_7(L5_5, "/usr/lib")
    if L7_7 then
      L7_7 = 1
      return L7_7
    end
    L7_7 = L0_0
    L7_7 = L7_7(L5_5, "/lib")
    if L7_7 then
      L7_7 = 1
      return L7_7
    end
  end
end
L7_7 = L0_0
L7_7 = L7_7(L5_5, "/var/log/")
if L7_7 then
  L7_7 = L2_2
  L7_7 = L7_7(L5_5, ".log")
  if L7_7 then
    L7_7 = L2_2
    L7_7 = L7_7(L4_4, "/nginx")
    if not L7_7 then
      L7_7 = L2_2
      L7_7 = L7_7(L4_4, "/httpd")
      if not L7_7 then
        L7_7 = L2_2
        L7_7 = L7_7(L4_4, "/apache2")
        if not L7_7 then
          L7_7 = L2_2
          L7_7 = L7_7(L4_4, "/mysqld")
          if not L7_7 then
            L7_7 = L2_2
            L7_7 = L7_7(L4_4, "/postgres")
          end
        end
      end
    elseif L7_7 then
      L7_7 = 1
      return L7_7
    end
  end
  L7_7 = L2_2
  L7_7 = L7_7(L5_5, ".journal")
  if L7_7 then
    L7_7 = L2_2
    L7_7 = L7_7(L4_4, "/systemd-journald")
    if L7_7 then
      L7_7 = 1
      return L7_7
    end
  end
end
L7_7 = L2_2
L7_7 = L7_7(L5_5, ".TXT")
if L7_7 then
  L7_7 = L2_2
  L7_7 = L7_7(L4_4, "/bin/ucxjlx6")
  if L7_7 then
    L7_7 = 1
    return L7_7
  end
end
L7_7 = L0_0
L7_7 = L7_7(L5_5, "/proc")
if L7_7 then
  L7_7 = "/proc/(%d+)/(%a+)"
  if string.find(L5_5, L7_7) and (string.find(L5_5, L7_7) == "task" or string.find(L5_5, L7_7) == "fd") then
    L7_7 = "^%d+$"
    if L6_6 ~= nil and string.find(L6_6, L7_7) then
      return 1
    end
  end
  return 0
end
L7_7 = L0_0
L7_7 = L7_7(L5_5, "/snap/core")
if L7_7 then
  L7_7 = "/snap/core/(%d+)/dev/core"
  if L5_5 ~= nil and string.find(L5_5, L7_7) then
    return 1
  end
end
L7_7 = 0
return L7_7
