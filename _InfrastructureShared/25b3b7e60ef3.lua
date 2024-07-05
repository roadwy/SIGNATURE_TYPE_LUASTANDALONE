local L0_0
L0_0 = mp
L0_0 = L0_0.IsKnownFriendlyFile
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()), true, true)
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
function L0_0(A0_1)
  if string.match(A0_1, "%a:\\program files") ~= nil then
    return true
  else
    return false
  end
end
is_in_program_files = L0_0
function L0_0(A0_2)
  if string.match(A0_2, "\\appdata\\local\\apps\\2.0\\") ~= nil then
    return true
  else
    return false
  end
end
is_clickonce_app = L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if is_in_program_files(L0_0) then
  return mp.CLEAN
end
if is_clickonce_app(L0_0) then
  return mp.CLEAN
end
return mp.INFECTED
