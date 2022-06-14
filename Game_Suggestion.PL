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

genre(action).
genre(rpg).
genre(strategy).
genre(simulation).
genre(adventure).



%   Rule 1
%     IF genre == action
%     AND action == fps
%     THEN camera_angle == first_person CNF = 100%
%          age_rating == mature CNF = 100%
%          gameplay == real_time_combat CNF = 100%
game_suggestion(Game, action, fps) :- best_game(Game_cod,first_person, mature,_,real_time_combat,_), game_name(Game_cod, Game).

%   Rule 2
%     IF genre == action
%     AND action == hack_and_slash
%     THEN camera_angle == third_person CNF = 100%
%          age_rating == mature CNF = 100%
%          game_lenght == from_twenty_five_hours_to_fifty_hours CNF = 100%
%          gameplay == real_time_combat CNF = 100%
game_suggestion(Game, action, hack_and_slash) :- best_game(Game_cod,third_person, mature,from_twenty_five_hours_to_fifty_hours,real_time_combat,_), game_name(Game_cod, Game).

%   Rule 3
%     IF genre == action
%     AND action == tps
%     THEN camera_angle == third_person CNF = 100%
%          age_rating == mature CNF = 100%
%          game_lenght == from_zero_hours_to_twenty_five_hours CNF = 100%
%          gameplay == real_time_combat CNF = 100%
game_suggestion(Game, action, tps) :- best_game(Game_cod,third_person, mature,from_zero_hours_to_twenty_five_hours,real_time_combat,_), game_name(Game_cod, Game).

%   Rule 4
%     IF genre == rpg
%     AND rpg == jrpg
%     THEN age_rating == teen CNF = 100%
%          gameplay == turn_based CNF = 100%
%          multiplayer == no CNF = 100%
game_suggestion(Game, rpg, jrpg) :- best_game(Game_cod,_, teen,_,turn_based,no), game_name(Game_cod, Game).

%   Rule 5
%     IF genre == rpg
%     AND rpg == crpg
%     THEN age_rating == mature CNF = 100%
%          gameplay == turn_based CNF = 100%
%          multiplayer == no CNF = 100%
game_suggestion(Game, rpg, crpg) :- best_game(Game_cod,_, mature,_,turn_based,no), game_name(Game_cod, Game).

%   Rule 6
%     IF genre == rpg
%     AND rpg == mmorpg
%     THEN age_rating == teen CNF = 100%
%          game_lenght == from_seventy_five_to_one_hundred_hours CNF = 100%
%          multiplayer == multiplayer_only CNF = 100%
game_suggestion(Game, rpg, mmorpg) :- best_game(Game_cod,_, teen,from_seventy_five_hours_to_one_hundred_hours,_,multiplayer_only), game_name(Game_cod, Game).

%   Rule 7
%     IF genre = strategy
%     AND strategy == rts
%     THEN camera_angle == isometric CNF = 100%
%          game_lenght == from_twenty_five_to_fifty_hours CNF = 100%
%          gameplay == real_time_combat CNF = 100%
%          multiplayer == yes CNF = 100%
game_suggestion(Game, strategy, rts) :- best_game(Game_cod,isometric, _,from_twenty_five_hours_to_fifty_hours,real_time_combat,yes), game_name(Game_cod, Game).

%   Rule 8
%     IF genre = strategy
%     AND strategy == four_x
%     THEN camera_angle == top_down CNF = 100%
%          age_rating == teen CNF = 100%
%          gameplay == turn_based CNF = 100%
%          multiplayer == yes CNF = 100%
game_suggestion(Game, strategy, four_x) :- best_game(Game_cod,top_down, teen,_,turn_based,yes), game_name(Game_cod, Game).

%   Rule 9
%     IF genre = simulation
%     AND simulation == building
%     THEN camera_angle == top_down CNF = 100%
%          age_rating == everyone CNF = 100%
%          gameplay == other CNF = 100%
game_suggestion(Game, simulation, building) :- best_game(Game_cod,top_down, everyone,_,other,_), game_name(Game_cod, Game).

%   Rule 10
%     IF genre = simulation
%     AND simulation == job
%     THEN camera_angle == third_person CNF = 100%
%          age_rating == everyone CNF = 100%
%          gameplay == other CNF = 100%
%          multiplayer == no CNF = 100%
game_suggestion(Game, simulation, job) :- best_game(Game_cod,third_person, everyone,_,other,no), game_name(Game_cod, Game).

%   Rule 11
%     IF genre = simulation
%     AND simulation == racing
%     THEN camera_angle == third_person CNF = 100%
%          age_rating == everyone CNF = 100%
%          game_lenght == from_zero_hours_to_twenty_five_hours CNF = 100%
%          gameplay == other CNF = 100%
%          multiplayer == yes CNF = 100%
game_suggestion(Game, simulation, racing) :- best_game(Game_cod,third_person, everyone,from_zero_hours_to_twenty_five_hours,other,yes), game_name(Game_cod, Game).

%   Rule 12
%     IF genre = adventure
%     AND adventure == visual_novel
%     THEN camera_angle == first_person CNF = 100%
%          game_lenght == from_zero_hours_to_twenty_five_hours CNF = 100%
%          gameplay == other CNF = 100%
%          multiplayer == no CNF = 100%
game_suggestion(Game, adventure, visual_novel) :- best_game(Game_cod,first_person, _,from_zero_hours_to_twenty_five_hours,other,no), game_name(Game_cod, Game).

%   Rule 13
%     IF genre = adventure
%     AND adventure == plataformer
%     THEN camera_angle == third_person CNF = 100%
%          age_rating == everyone CNF = 100%
%          gameplay == real_time_combat CNF = 100%
%          multiplayer == no CNF = 100%
game_suggestion(Game, adventure, plataformer) :- best_game(Game_cod,third_person,everyone, _,real_time_combat,no), game_name(Game_cod, Game).

%   Rule 14
%     IF Camera_angle = first_person
%     AND Age_Rating = mature
%     AND Gameplay = real_time_combat
%     THEN game_suggestion == Payday CNF = 100%
best_game(pdy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = first_person), (Age_Rating = mature), (Gameplay = real_time_combat),!.

%   Rule 15
%     IF Age_Rating = mature
%     AND Gameplay = turn_based
%     AND Multiplayer = no
%     THEN game_suggestion == Dragon Quest XI S CNF = 100%
best_game(dqs, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Age_Rating = teen), (Gameplay = turn_based),(Multiplayer = no),!.

%   Rule 16
%     IF Camera_Angle = top_down
%     AND Age_Rating = teen
%     AND Gameplay = turn_based
%     AND Multiplayer = yes
%     THEN game_suggestion == Civilization VI CNF = 100%
best_game(cvn, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = top_down), (Age_Rating = teen), (Gameplay = turn_based), (Multiplayer = yes),!.

%   Rule 17
%     IF Camera_Angle = third_person
%     AND Age_Rating = mature
%     AND Game_Lenght = from_twenty_five_hours_to_fifty_hours
%     AND Gameplay = real_time_combat
%     THEN game_suggestion == Dark Souls CNF = 100%
%          game_suggestion == God of War CNF = 100%
best_game(dss, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person),(Age_Rating = mature), (Game_Lenght = from_twenty_five_hours_to_fifty_hours), (Gameplay = real_time_combat).
best_game(gow, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Age_Rating = mature),(Game_Lenght = from_twenty_five_hours_to_fifty_hours), (Gameplay = real_time_combat),!.

%   Rule 18
%     IF Camera_Angle = isometric
%     AND Game_Lenght = from_twenty_five_hours_to_fifty_hours
%     AND Gameplay = real_time_combat
%     AND Multiplayer = yes
%     THEN game_suggestion == Age of Empires II CNF = 100%
best_game(aoe, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = isometric), (Game_Lenght = from_twenty_five_hours_to_fifty_hours), (Gameplay = real_time_combat), (Multiplayer = yes),!.

%   Rule 19
%     IF Age_Rating = mature
%     AND Gameplay = turn_based
%     AND Multiplayer = no
%     THEN game_suggestion == Disco Elysium  CNF = 100%
best_game(dem, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Age_Rating = mature), (Gameplay = turn_based), (Multiplayer = no),!.

%   Rule 20
%     IF Camera_Angle = top_down
%     AND Age_Rating = everyone
%     AND Gameplay = other
%     THEN game_suggestion == Cities Skylines  CNF = 100%
best_game(css, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = top_down), (Age_Rating = everyone), (Gameplay = other),!.

%   Rule 21
%     IF Camera_Angle = third_person
%     AND Age_Rating = everyone
%     AND Gameplay = other
%     AND Multiplayer = no
%     THEN game_suggestion == Flight Simulator  CNF = 100%
best_game(fsr, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Age_Rating = everyone), (Gameplay = other), (Multiplayer = no),!.

%   Rule 22
%     IF Camera_Angle = third_person
%     AND Game_Lenght = from_zero_hours_to_twenty_five_hours
%     AND Age_Rating = everyone
%     AND Gameplay = other
%     AND Multiplayer = yes
%     THEN game_suggestion == Forza Horizon  CNF = 100%
best_game(fhn, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Game_Lenght = from_zero_hours_to_twenty_five_hours), (Age_Rating = everyone), (Gameplay = other), (Multiplayer = yes),!.

%   Rule 23
%     IF Camera_Angle = third_person
%     AND Age_Rating = everyone
%     AND Gameplay = real_time_combat
%     AND Multiplayer = no
%     THEN game_suggestion == Mario Odyssey  CNF = 100%
best_game(moy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Age_Rating = everyone), (Gameplay = real_time_combat), (Multiplayer = no),!.

%   Rule 24
%     IF Camera_Angle = first_person
%     AND Game_Lenght = from_zero_hours_to_twenty_five_hours
%     AND Gameplay = other
%     AND Multiplayer = no
%     THEN game_suggestion == Coffee Talk  CNF = 100%
best_game(ctk, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = first_person), (Game_Lenght = from_zero_hours_to_twenty_five_hours), (Gameplay = other), (Multiplayer = no),!.

%   Rule 25
%     IF Age_Rating = teen
%     AND Game_Lenght = from_seventy_five_hours_to_one_hundred_hours
%     AND Multiplayer = multiplayer_only
%     THEN game_suggestion == Final Fantasy XIV  CNF = 100%
best_game(ffy, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Age_Rating = teen), (Game_Lenght = from_seventy_five_hours_to_one_hundred_hours), (Multiplayer = multiplayer_only),!.

%   Rule 26
%     IF Camera_Angle = third_person
%     AND Age_Rating = mature
%     AND Gameplay = real_time_combat
%     THEN game_suggestion == Max Payne 3  CNF = 100%
best_game(mpe, Camera_Angle, Age_Rating, Game_Lenght, Gameplay, Multiplayer):- (Camera_Angle = third_person), (Age_Rating = mature), (Gameplay = real_time_combat),!.


% To get a game suggestion, use the command:
% game_suggestion(Game, <GENRE>, <SUB-GENRE>).
% If there is more than one game that is fits the parameters, press ";" to get a new suggestion

% Here is a list of the possible <GENRE>:
% -action,
% -rpg
% -strategy
% -simulation
% -adventure

% And here are the <SUB-GENRE> possible for each <GENRE> listed above:
% ACTION - 
% fps
% hack_and_slash
% tps
%
% RPG - 
% jrpg
% crpg
% mmorpg
%
% STRATEGY -
% rts
% four_x
%
% SIMULATION - 
% building
% job
% racing
%
% ADVENTURE - 
% visual_novel
% plataformer

% Execution example:
% game_suggestion(Game, strategy, four_x)