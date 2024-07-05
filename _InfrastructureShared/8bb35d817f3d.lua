local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].image_path
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].image_path
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].image_path
end
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if #L0_0 >= 18 and L0_0:find("\\windows\\system32\\", 1, true) == nil and L0_0:find("\\windows\\syswow64\\", 1, true) == nil then
  return mp.INFECTED
end
if #L0_0 >= 13 and L0_0:sub(-13) ~= "\\schtasks.exe" then
  return mp.INFECTED
end
return mp.CLEAN
