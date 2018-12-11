--Create New group 
newCG("Main")
--Create New Command SubGroup
newSubCG("Main", "CameraToship")
newCom("CameraToship", "MoveToEaseIO",  "camera", 0, 0, 0, 8, 0.14, 0.1, 0, "controlPoint1", "ship")

newSubCG("Main", "Action")
newCom("Action", "MoveToEaseIO",  "ship2", 0, 0, 0, 16, 0.14, 0.1, 0, "controlPoint2", "")
newCom("Action", "Follow",  "camera", 8, 0, 50, 10, 4, 12, 20, "ship2", "ship")
newCom("Action", "Trigger", "ship2", 0, 0, 0, 120, 0, 0, 0, "small_factory", "DeffenceTrigger.lua")
newCom("Action", "Trigger", "ship2", 0, 0, 0, 30, 0, 0, 0, "controlPoint3", "prep_to_battle.lua")

newSubCG("Main", "CameraMove")
newCom("CameraMove", "FollowCurve",  "camera", 100, 70, -120, 10, 0.3, 0.3, 0, "controlPoint5", "controlPoint6")

--newCom("PickUp_pockeball", "OrientTo",  "knight", 0, 0, 0, 7, 0, 0, 0, "pokeball", "")
--Command group that will run After previous CG is finished
--newSubCG("Main", "PrepareToThrow")
--newCom("PrepareToThrow", "MoveToEaseIO",  "knight", 0, 0, 0, 4, 0.4, 0.4, 0, "teapot", "")
--example of "follow" command
--where  (..., ..., ... IdealRelPos, FollowTime(0 = forever), MinDist, MaxSpeedDis, MaxSpeed, target)
--newCom("PrepareToThrow", "Follow",  "pokeball", 100, 100, 100, 4, 50, 200, 600, "knight", "")
--Aiming to throw pokeball
--newSubCG("Main", "Aim")
--newCom("Aim", "OrientTo",  "knight", 0, 0, 0, 3, 0, 0, 0, "ivysaur", "")
--Throw!
--newSubCG("Main", "ballisticThrow")
--example of follow Bezier curve command
--where  (..., ..., obj to move, x,y,z -control point, time, x,y,z destination OR destination object)
--newCom("ballisticThrow", "FollowCurve", "pokeball", 300, 1000, 0, 4, 0, 0, 0, "ivysaur", "")

--this command will run in parallel on Main Group
--pokeball trigged ivysaur
--example of trigger command
--where (..., ..., obj that we checking, x,y,z -trigger point (if no target object), radius, object-location trigger, script that will run)
--newCom("Main", "Trigger",  "pokeball", 0, 0, 0, 50, 0, 0, 0, "ivysaur", "trig.lua")
--Create New commands and add it to existing command group to run them parallel
-- (Group Name, CommandName, objName, x, y, z, time, EaseIn from 0 to 1, EaseOut, Target Obj, ScriptName)