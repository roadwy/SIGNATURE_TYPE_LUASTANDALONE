if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and mp.GetMOTWHostUrl() ~= nil and (mp.GetMOTWHostUrl():find("czhgtiigmfsyxgne2nyoufaqp5jvr76hiiueq4qp5elqjtpho6fx3iid.onion/", 1, true) or mp.GetMOTWHostUrl():find("xkyn2emjzrbi5h4uffqc4ymi2dx3qh4ovoy27cm72ee4wljlkw6cljyd.onion/", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
