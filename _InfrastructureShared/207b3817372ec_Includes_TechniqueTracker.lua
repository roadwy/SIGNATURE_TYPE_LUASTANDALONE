local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
if L0_0 == nil then
  return L2_2
end
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = string
    L7_7 = L7_7.lower
    L8_8 = string
    L8_8 = L8_8.match
    L9_9 = L6_6.image_path
    L10_10 = "\\([^\\]+)$"
    L10_10 = L8_8(L9_9, L10_10)
    L7_7 = L7_7(L8_8, L9_9, L10_10, L8_8(L9_9, L10_10))
    if L7_7 == "services.exe" then
      L8_8 = nil
      L9_9 = bm
      L9_9 = L9_9.get_current_process_startup_info
      L9_9 = L9_9()
      if L9_9 ~= nil then
        L10_10 = L9_9.ppid
        if L10_10 ~= nil then
          L8_8 = L9_9.ppid
        end
      end
      L10_10 = bm
      L10_10 = L10_10.get_imagepath
      L10_10 = L10_10()
      if L10_10 ~= nil then
        L10_10 = MpCommon.PathToWin32Path(L10_10)
      end
      if L10_10 == nil or L8_8 == nil then
        return mp.CLEAN
      end
      L10_10 = string.lower(L10_10)
      if StringStartsWith(L10_10, "%") then
        return mp.CLEAN
      end
      if L10_10:find("\\adminarsenal\\", 1, true) or L10_10:find("ccmexec%.exe") or L10_10:find("bomgar%-scc%.exe") or L10_10:find("keyacc32%.exe") then
        return mp.CLEAN
      end
      if L10_10:find("\\temp\\kav remote installations\\", 1, true) or L10_10:find("\\logmein rescue connectonlan\\lmirescueapplet", 1, true) then
        return mp.CLEAN
      end
      if L10_10:find("\\veeam.+%.exe") or L10_10:find("\\f5.+%.exe") then
        return mp.CLEAN
      end
      if L10_10:find("\\pdq.+%.exe") then
        return mp.CLEAN
      end
      if IsPidExcluded(L8_8) then
        return mp.CLEAN
      end
      TrackPidAndTechniqueBM(L8_8, "T1021.002", "remoteservice-target")
      return mp.INFECTED
    end
  end
end
return L2_2
