local boardConstant = {}

--JOUEUR
  --flankL
  boardConstant['PlayerFlankLeft']  = { 32,157}
  --flankR
  boardConstant['PlayerFlankRight'] = {115,157}
  
  
--ENNEMY
  --flankL
  boardConstant['EnnemyFlankLeft']  = { 32,  7}
  --flankR
  boardConstant['EnnemyFlankRight'] = {115,  7}
  
  
--HAND
--1
  boardConstant[ 1] = {x = 303, y = 158}
--2
  boardConstant[ 2] = {x = 303, y = 145}
--3
  boardConstant[ 3] = {x = 303, y = 132}
--4
  boardConstant[ 4] = {x = 303, y = 119}
--5
  boardConstant[ 5] = {x = 303, y = 106}
--6
  boardConstant[ 6] = {x = 303, y = 93}
--7
  boardConstant[ 7] = {x = 303, y = 80}
--8
  boardConstant[ 8] = {x = 303, y = 67}
--9
  boardConstant[ 9] = {x = 303, y = 54}
--10
  boardConstant[10] = {x = 303, y = 41}
--11
  boardConstant[11] = {x = 303, y = 28}
--12
  boardConstant[12] = {x = 303, y = 15}
--13
  boardConstant[13] = {x = 303, y = 2}
  
--CARD SIZE
boardConstant['cardsize'] = { width = 72, height = 106}
  


return boardConstant