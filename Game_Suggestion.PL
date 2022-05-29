% Expert Sytems for game suggestions
% Alunos : Arthur Bastos e Jean Leopoldo

camera_angle(first_person).
camera_angle(third_person).
camera_angle(isometric).
camera_angle(top_down).

age_rating(everyone).
age_rating(teen).
age_rating(mature).

game_lenght(from_zero_hours_to_twenty_five_hours).
game_lenght(from_twenty_five_hours_to_fifty_hours).
game_lenght(from_fifty_to_seventy_five_hours).
game_lenght(from_seventy_five_hours_to_one_hundred_hours).

gameplay(real_time_combat).
gameplay(turn_based).
gameplay(other).

multiplayer(yes).
multiplayer(no).
multiplayer(multiplayer_only).

game_name(pdy,"Payday").
game_name(dqs,"Dragon Quest XI S").
game_name(cvn,"Civilization VI").
game_name(dss,"Dark Souls").
game_name(aoe,"Age Of Empires II").
game_name(dem,"Disco Elysium").
game_name(css,"Cities Skylines").
game_name(fsr,"Flight Simulator").
game_name(fhn,"Forza Horizon").
game_name(moy,"Mario Odyssey").
game_name(ctk,"Coffee Talk").
game_name(ffy,"Final Fantasy XIV").
game_name(mpe,"Max Payne").
game_name(gow,"God Of War").

game_atributtes(pdy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = first_person), (age_rating = mature), (game_lenght = from_twenty_five_hours_to_fifty_hours), (gameplay = real_time_combat), (multiplayer = yes), !. 
game_atributtes(dqs, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = third_person), (age_rating = teen), (game_lenght = from_fifty_to_seventy_five_hours), (gameplay = turn_based), (multiplayer = no), !. 
game_atributtes(cvn, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = top_down), (age_rating = teen), (game_lenght = from_twenty_five_hours_to_fifty_hours), (gameplay = turn_based), (multiplayer = yes), !. 
game_atributtes(dss, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = third_person), (age_rating = mature), (game_lenght = from_fifty_to_seventy_five_hours), (gameplay = real_time_combat), (multiplayer = yes), !. 
game_atributtes(aoe, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = isometric), (age_rating = teen), (game_lenght = from_twenty_five_hours_to_fifty_hours), (gameplay = real_time_combat), (multiplayer = yes), !. 
game_atributtes(dem, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = isometric), (age_rating = mature), (game_lenght = from_zero_hours_to_twenty_five_hours), (gameplay = other), (multiplayer = no), !. 
game_atributtes(css, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = isometric), (age_rating = everyone), (game_lenght = from_twenty_five_hours_to_fifty_hours), (gameplay = other), (multiplayer = no), !. 
game_atributtes(fsr, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = third_person), (age_rating = everyone), (game_lenght = from_fifty_to_seventy_five_hours), (gameplay = other), (multiplayer = yes), !. 
game_atributtes(fhn, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = third_person), (age_rating = everyone), (game_lenght = from_zero_hours_to_twenty_five_hours), (gameplay = other), (multiplayer = yes), !. 
game_atributtes(moy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = third_person), (age_rating = everyone), (game_lenght = from_twenty_five_hours_to_fifty_hours), (gameplay = real_time_combat), (multiplayer = no), !. 
game_atributtes(ctk, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = first_person), (age_rating = teen), (game_lenght = from_zero_hours_to_twenty_five_hours), (gameplay = other), (multiplayer = no), !. 
game_atributtes(ffy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = third_person), (age_rating = teen), (game_lenght = from_seventy_five_hours_to_one_hundred_hours), (gameplay = turn_based), (multiplayer = multiplayer_only), !. 
game_atributtes(mpe, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = third_person), (age_rating = mature), (game_lenght = from_zero_hours_to_twenty_five_hours), (gameplay = real_time_combat), (multiplayer = yes), !. 
game_atributtes(gow, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer) :- (camera_angle = third_person), (age_rating = mature), (game_lenght = from_twenty_five_hours_to_fifty_hours), (gameplay = real_time_combat), (multiplayer = no), !. 

action(fps).
action(hack_and_slash).
action(tps).

rpg(jrpg).
rpg(crpg).
rpg(mmorpg).

strategy(rts).
strategy(four_x).

simulation(building).
simulation(job).
simulation(racing).

adventure(visual_novel).
adventure(plataformer).

game_suggestion(Game, action, fps) :- best_game(Game_cod,first_person, mature,_,real_time_combat,_), game_name(Game_cod, Game).

game_suggestion(Game, action, hack_and_slash) :- best_game(Game_cod,third_person, mature,from_twenty_five_hours_to_fifty_hours,real_time_combat,_), game_name(Game_cod, Game).

game_suggestion(Game, action, tps) :- best_game(Game_cod,third_person, mature,from_zero_hours_to_twenty_five_hours,real_time_combat,_), game_name(Game_cod, Game).

game_suggestion(Game, rpg, jrpg) :- best_game(Game_cod,_, teen,_,turn_based,no), game_name(Game_cod, Game).

game_suggestion(Game, rpg, crpg) :- best_game(Game_cod,_, mature,_,turn_based,no), game_name(Game_cod, Game).

game_suggestion(Game, rpg, mmorpg) :- best_game(Game_cod,_, teen,from_seventy_five_hours_to_one_hundred_hours,_,multiplayer_only), game_name(Game_cod, Game).

game_suggestion(Game, strategy, rts) :- best_game(Game_cod,isometric, _,from_twenty_five_hours_to_fifty_hours,real_time_combat,yes), game_name(Game_cod, Game).

game_suggestion(Game, strategy, four_x) :- best_game(Game_cod,top_down, teen,_,turn_based,yes), game_name(Game_cod, Game).

game_suggestion(Game, simulation, building) :- best_game(Game_cod,top_down, everyone,_,other,_), game_name(Game_cod, Game).

game_suggestion(Game, simulation, job) :- best_game(Game_cod,third_person, everyone,_,other,no), game_name(Game_cod, Game).

game_suggestion(Game, simulation, racing) :- best_game(Game_cod,third_person, everyone,from_zero_hours_to_twenty_five_hours,other,yes), game_name(Game_cod, Game).

game_suggestion(Game, adventure, visual_novel) :- best_game(Game_cod,first_person, _,from_zero_hours_to_twenty_five_hours,other,no), game_name(Game_cod, Game).

game_suggestion(Game, adventure, plataformer) :- best_game(Game_cod,third_person,everyone, _,real_time_combat,no), game_name(Game_cod, Game).

best_game(pdy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = first_person), (Age_Rating = mature), (Gameplay = real_time_combat),!.

best_game(dqs, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Age_Rating = teen), (Gameplay = turn_based),(Multiplayer = no),!.

best_game(cvn, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = top_down), (Age_Rating = teen), (Gameplay = turn_based), (Multiplayer = yes),!.

best_game(dss, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person),(Age_Rating = mature), (Game_Lenght = from_twenty_five_hours_to_fifty_hours), (Gameplay = real_time_combat),!.
best_game(gow, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Age_Rating = mature),(Game_Lenght = from_twenty_five_hours_to_fifty_hours), (Gameplay = real_time_combat),!.

best_game(aoe, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = isometric), (Game_Lenght = from_twenty_five_hours_to_fifty_hours), (Gameplay = real_time_combat), (Multiplayer = yes),!.

best_game(dem, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Age_Rating = mature), (Gameplay = turn_based), (Multiplayer = no),!.

best_game(css, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = top_down), (Age_Rating = everyone), (Gameplay = other),!.

best_game(fsr, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Age_Rating = everyone), (Gameplay = other), (Multiplayer = no),!.

best_game(fhn, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Game_Lenght = from_zero_hours_to_twenty_five_hours), (Age_Rating = everyone), (Gameplay = other), (Multiplayer = yes),!.

best_game(moy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Age_Rating = everyone), (Gameplay = real_time_combat), (Multiplayer = no),!.

best_game(ctk, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = first_person), (Game_Lenght = from_zero_hours_to_twenty_five_hours), (Gameplay = other), (Multiplayer = no),!.

best_game(ffy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Age_Rating = teen), (Game_Lenght = from_seventy_five_hours_to_one_hundred_hours), (Multiplayer = multiplayer_only),!.

best_game(mpe, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Age_Rating = mature), (Gameplay = real_time_combat),!.

