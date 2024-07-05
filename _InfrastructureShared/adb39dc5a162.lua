local L0_0, L1_1, L2_2, L3_3
function L0_0(A0_4, A1_5)
  local L2_6, L3_7, L4_8, L5_9, L6_10, L7_11, L8_12, L9_13, L10_14, L11_15, L12_16, L13_17, L14_18
  if A0_4 ~= nil and A1_5 ~= nil then
    L2_6 = type
    L3_7 = A1_5
    L2_6 = L2_6(L3_7)
  elseif L2_6 ~= "table" then
    L2_6 = nil
    return L2_6
  end
  L2_6 = bm
  L2_6 = L2_6.get_process_relationships
  L3_7 = A0_4
  L3_7 = L2_6(L3_7)
  for L7_11, L8_12 in L4_8(L5_9) do
    L9_13 = mp
    L9_13 = L9_13.bitand
    L9_13 = L9_13(L10_14, L11_15)
    if L9_13 == 1 then
      L9_13 = L8_12.image_path
      for L13_17, L14_18 in L10_14(L11_15) do
        if string.sub(L9_13, -string.len(L14_18)) == L14_18 then
          return L8_12.ppid
        end
      end
    end
  end
  return L4_8
end
checkChildProcessExist = L0_0
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L1_1 = "%windir%\\system32\\LogonUI.exe"
L0_0 = L0_0(L1_1)
L1_1 = sysio
L1_1 = L1_1.GetProcessFromFileName
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 == 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L2_2 = L3_3.ppid
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L2_2 = L3_3.ppid
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L2_2 = L3_3.ppid
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[4]
        L2_2 = L3_3.ppid
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[5]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[5]
          L2_2 = L3_3.ppid
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[6]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[6]
            L2_2 = L3_3.ppid
          end
        end
      end
    end
  end
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {
  "conhost.exe"
}
if checkChildProcessExist(L2_2, L3_3) == nil then
  return mp.CLEAN
end
return mp.INFECTED
