--newCG("battle")
--newSubCG("battle", "MoveToShip1")
newCom("Main", "MoveToEaseIO",  "ship", 0, 0, 0, 10, 0.3, 0.3, 0, "controlPoint3", "")
newCom("Main", "OrientTo",  "ship", 0, 0, 0, 1, 0, 0, 0, "controlPoint3", "")
--newCom("Main", "Trigger",  "ship", 0, 0, 0, 30, 0, 0, 0, "controlPoint3", "prep_to_battle.lua")

--newSubCG("Triggered", "NextRunPoint")
--newCom("NextRunPoint", "MoveToEaseIO",  "ivysaur", 0, 0, 0, 6, 0.3, 0.3, 0, "AxePainted", "")
--newCom("NextRunPoint", "OrientTo",  "ivysaur", 0, 0, 0, 1, 0, 0, 0, "AxePainted", "")
--
--newSubCG("Triggered", "NextRunPoint1")
--newCom("NextRunPoint1", "MoveToEaseIO",  "ivysaur", 0, 0, 0, 3, 0.3, 0.3, 0, "cat", "")
--newCom("NextRunPoint1", "OrientTo",  "ivysaur", 0, 0, 0, 1, 0, 0, 0, "cat", "")
--newSubCG("Triggered", "NextRunPoint2")
--newCom("NextRunPoint2", "MoveToEaseIO",  "ivysaur", 0, 0, 0, 3, 0.3, 0.3, 0, "", "")
--newCom("NextRunPoint2", "OrientTo",  "ivysaur", 0, 0, 0, 1, 0, 0, 0, "AxePainted", "")

----camera will follow Ivysaur for 15 sec IN PARALLEL
--newCom("Triggered", "Follow",  "camera", 450, 400, 400, 25, 400, 500, 800, "ivysaur", "")
