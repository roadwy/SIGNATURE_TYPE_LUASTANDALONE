if mp.get_mpattributesubstring("MpContentDetected") and (mp.get_mpattributesubstring("Detection:HackTool:") or mp.get_mpattributesubstring("Detection:VirTool:")) and not mp.get_mpattributesubstring("AutoKMS") then
  return mp.INFECTED
end
return mp.CLEAN
