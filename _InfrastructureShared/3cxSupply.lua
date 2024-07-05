local L1_0
function L1_0()
  local L0_1
  L0_1 = MpCommon
  L0_1 = L0_1.ExpandEnvironmentVariables
  L0_1 = L0_1("%localappdata%")
  MpDetection.ScanResource("file://" .. L0_1 .. "\\Programs\\3CXDesktopApp\\app\\ffmpeg.dll")
  MpDetection.ScanResource("file://" .. L0_1 .. "\\Programs\\3CXDesktopApp\\app\\d3dcompiler_47.dll")
end
Infrastructure_3CXScan = L1_0
