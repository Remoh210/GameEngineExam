newCG("Main")
newSubCG("Main", "CameraToship")
newCom("CameraToship", "MoveToEaseIO",  "camera", 0, 0, 0, 8, 0.14, 0.1, 0, "controlPoint1", "ship")

newSubCG("Main", "Action")
newCom("Action", "MoveToEaseIO",  "ship2", 0, 0, 0, 16, 0.14, 0.1, 0, "controlPoint2", "")
newCom("Action", "Follow",  "camera", 8, 5, 50, 11, 4, 12, 20, "ship2", "ship")
newCom("Action", "Trigger", "ship2", 0, 0, 0, 120, 0, 0, 0, "small_factory", "DeffenceTrigger.lua")
newCom("Action", "Trigger", "ship2", 0, 0, 0, 30, 0, 0, 0, "controlPoint3", "prep_to_battle.lua")

newSubCG("Main", "CameraMove")
newCom("CameraMove", "FollowCurve",  "camera", 100, 90.4, -20.6, 10, 0.3, 0.3, 0, "controlPoint5", "controlPoint6")
