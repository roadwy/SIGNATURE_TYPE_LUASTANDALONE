local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0 ~= nil and (L0_0:sub(1, 2) == "\\\\" or L0_0:sub(1, 3) == "\"\\\\" or L0_0:sub(1, 3) == "'\\\\") then
  if L0_0:find("\\\\.+\\c%$\\") then
    TrackFileAndTechnique(L0_0, "T1543.003:remote_svc_img_cdollar", 8000)
  elseif L0_0:find("\\\\.+\\admin%$\\") then
    TrackFileAndTechnique(L0_0, "T1543.003:remote_svc_img_adminshare", 8000)
  else
    TrackFileAndTechnique(L0_0, "T1543.003:remote_svc_img_rndshare", 8000)
  end
  bm.add_related_file(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
