//---------------------------------------------------------
//----------------- ASYNC SAVE ----------------------------
//---------------------------------------------------------

if (global.platform==3) //PS4 ONLY
{                          
    //UPDATE CURRENT SAVE SLOT BEFORE SAVING    
    if (global.ranked==true) && (global.SavedHP<=0)
        {
            //DO NOTHING KEEP LAST SAVED ROOM
        }
        else
        {
        if instance_exists(obj_CheckPoint) || instance_exists(obj_CheckPoint_Boss) || instance_exists(obj_Tube_Glass)
        global.SavedRoom = room; //ROOM FROM CHECK POINT 
        }
            
    global.SaveSlot_date[global.slot]        = global.date;            //DATE
    global.SaveSlot_name[global.slot]        = global.name;            //HERO NAME
    global.SaveSlot_SavedRoom[global.slot]   = global.SavedRoom;       //CHECKPOINT ROOM ID
    global.SaveSlot_SavedHP[global.slot]     = global.SavedHP;         //Health           
    global.SaveSlot_SavedMoney[global.slot]  = global.SavedMoney;      //Money
                                 
    for(var a=0; a<=2; a+=1) //Set Inventory
    {
        for (b=0;b<=3;b+=1)
        {
            switch(global.slot)
            {
            case 1:  global.SaveSlot_Inventory_1[a,b] = global.Inventory[a,b]; break;//INVENTORY SLOT
            case 2:  global.SaveSlot_Inventory_2[a,b] = global.Inventory[a,b]; break;
            case 3:  global.SaveSlot_Inventory_3[a,b] = global.Inventory[a,b]; break;
            case 4:  global.SaveSlot_Inventory_4[a,b] = global.Inventory[a,b]; break;
            case 5:  global.SaveSlot_Inventory_5[a,b] = global.Inventory[a,b]; break;
            case 6:  global.SaveSlot_Inventory_6[a,b] = global.Inventory[a,b]; break;
            case 7:  global.SaveSlot_Inventory_7[a,b] = global.Inventory[a,b]; break;
            case 8:  global.SaveSlot_Inventory_8[a,b] = global.Inventory[a,b]; break;
            }
           
        }
    } 
       
    global.SaveSlot_weapon_A[global.slot] = global.weapon_A; //WEAPON SLOT 1 ID
    global.SaveSlot_weapon_B[global.slot] = global.weapon_B; //WEAPON SLOT 2 ID
    global.SaveSlot_weapon_C[global.slot] = global.weapon_C; //WEAPON SLOT 3 ID
    global.SaveSlot_weapon_D[global.slot] = global.weapon_D; //WEAPON SLOT 4 ID
        
    if (global.pets[0]>=1)
    global.SaveSlot_pets[global.slot,0]=global.pets[0]; //Turtle
    else
    global.SaveSlot_pets[global.slot,0]=1;
    
    global.SaveSlot_pets[global.slot,1]= global.pets[1]; //Pup
    global.SaveSlot_pets[global.slot,2]= global.pets[2]; //Cat
    global.SaveSlot_pets[global.slot,3]= global.pets[3]; //Weasel
    global.SaveSlot_pets[global.slot,4]= global.pets[4]; //Duck
    
    global.SaveSlot_weapon_A_energy[global.slot]=global.weapon_A_energy; //WEAPON SLOT 1 AMMO
    global.SaveSlot_weapon_B_energy[global.slot]=global.weapon_B_energy; //WEAPON SLOT 2 AMMO
    global.SaveSlot_weapon_C_energy[global.slot]=global.weapon_C_energy; //WEAPON SLOT 3 AMMO
    global.SaveSlot_weapon_D_energy[global.slot]=global.weapon_D_energy; //WEAPON SLOT 4 AMMO
    
    global.SaveSlot_Hours[global.slot]     = global.Hours;     //Speed Run Time
    global.SaveSlot_Minutes[global.slot]   = global.Minutes;   //Speed Run Time
    global.SaveSlot_Seconds[global.slot]   = global.Seconds;   //Speed Run Time
    
    global.SaveSlot_ranked_Minutes[global.slot]   = global.ranked_Minutes;   //Speed Run Time
    global.SaveSlot_ranked_Seconds[global.slot]   = global.ranked_Seconds;   //Speed Run Time
    
    global.SaveSlot_Points[global.slot]    = global.Points;    //SCORE
    global.SaveSlot_HERO_type[global.slot] = global.HERO_type; //ADULT [1] vs CHILD [0]
    
    global.SaveSlot_World[global.slot] = global.World;  //SET WORLD FOR WORLD MAP
    
        for (a=1;a<=14;a+=1) //BOSS SCORE
        {  
            for (b=1;b<=3;b+=1)
            {
                switch(global.slot)
                {
                case 1: global.SaveSlot_Boss_Score_1[a,b] = global.Boss_Score[a,b]; break; //NOT BEATEN DEFAULT SCORE
                case 2: global.SaveSlot_Boss_Score_2[a,b] = global.Boss_Score[a,b]; break;
                case 3: global.SaveSlot_Boss_Score_3[a,b] = global.Boss_Score[a,b]; break;
                case 4: global.SaveSlot_Boss_Score_4[a,b] = global.Boss_Score[a,b]; break;
                case 5: global.SaveSlot_Boss_Score_5[a,b] = global.Boss_Score[a,b]; break;
                case 6: global.SaveSlot_Boss_Score_6[a,b] = global.Boss_Score[a,b]; break;
                case 7: global.SaveSlot_Boss_Score_7[a,b] = global.Boss_Score[a,b]; break;
                case 8: global.SaveSlot_Boss_Score_8[a,b] = global.Boss_Score[a,b]; break;
                }
            }
        }
        
        //WORLD PROGRESS
        for (c=0;c<15;c+=1)
        {
            global.SaveSlot_world_clear[global.slot,c] = global.world_clear[c]; //WHICH WORLDS HAVE BEEN BEATEN
        }
        
     global.SaveSlot_difficulty[global.slot] = global.difficulty;  //CURRENT GAME DIFFICULTY
     global.SaveSlot_ranked[global.slot]     = global.ranked;      //RANKDED GAME
     global.SaveSlot_worldmap[global.slot]   = global.worldmap;      //IN WORLD MAP
     
     
     //-----------[END] SAVE LATEST IN MEMORY ONLY                        
    if (global.saving or global.loading) exit;
    
    if (global.saving==false) && (global.loading==false)
    {   
    show_debug_message("saving...");

    buffer_async_group_begin("saves");
    buffer_async_group_option("showdialog", 0);
    buffer_async_group_option("savepadindex", 0);
    buffer_async_group_option("saveslotsize", 1);   
    buffer_async_group_option("slottitle", "Daydreamer");
    buffer_async_group_option("subtitle", "Daydreamer Save Files");
        
    //globalvar savebuff;
    global.savebuff = buffer_create(1,buffer_grow,1);    
    ini_open_from_string("");
        
        ini_write_real("Settings","blur_fx",global.blur_fx);
        ini_write_real("Settings","vol",global.vol);
        ini_write_real("Settings","mus",global.mus);
        ini_write_real("Settings","dof",global.dof);
        ini_write_real("Settings","difficulty",global.difficulty);
        ini_write_real("Settings","vsync",global.vsync); 
        ini_write_real("Settings","ctlstyle",global.ctlstyle);
        ini_write_real("Settings","auto_pickup",global.auto_pickup);
        ini_write_real("Settings","auto_swap",global.auto_swap);
        ini_write_real("Settings","rumble",global.rumble);
        ini_write_real("Settings","shock_fx",global.shock_fx);
        
        ini_write_real("Gamepad","gp_D_Left",global.gp_D_Left);
        ini_write_real("Gamepad","gp_D_Right",global.gp_D_Right);
        ini_write_real("Gamepad","gp_D_Up",global.gp_D_Up);
        ini_write_real("Gamepad","gp_D_Down",global.gp_D_Down);
        ini_write_real("Gamepad","gp_Jump",global.gp_Jump);
        ini_write_real("Gamepad","gp_Melee",global.gp_Melee);
        ini_write_real("Gamepad","gp_Fire",global.gp_Fire);
        ini_write_real("Gamepad","gp_Weapon",global.gp_Weapon);
        ini_write_real("Gamepad","gp_Pause",global.gp_Pause);
        ini_write_real("Gamepad","gp_Select",global.gp_Select);
        ini_write_real("Gamepad","gp_Left_Shoulder",global.gp_Left_Shoulder);
        ini_write_real("Gamepad","gp_Right_Shoulder",global.gp_Right_Shoulder);
        ini_write_real("Gamepad","gp_Left_Trigger",global.gp_Left_Trigger);
        ini_write_real("Gamepad","gp_Right_Trigger",global.gp_Right_Trigger);
        ini_write_real("Gamepad","gp_Pet_L",global.gp_Pet_L);
        ini_write_real("Gamepad","gp_Pet_R",global.gp_Pet_R);
        
        //******************** SAVE INI START **********************//
        var sl;
        for(sl=1;sl<9;sl+=1)
        {
            ini_write_string("Info","SaveSlot_date"+"["+string(sl)+"]", global.SaveSlot_date[sl]);
            ini_write_string("Info","SaveSlot_name"+"["+string(sl)+"]", global.SaveSlot_name[sl]);
                                                                      
            ini_write_real("Game","SaveSlot_SavedRoom"+"["+string(sl)+"]",   global.SaveSlot_SavedRoom[sl]); //ROOM ID                
            ini_write_real("Hero","SaveSlot_SavedHP"+"["+string(sl)+"]",     global.SaveSlot_SavedHP[sl]);
            ini_write_real("Hero","SaveSlot_SavedMoney"+"["+string(sl)+"]",  global.SaveSlot_SavedMoney[sl]);        
            
            for (a=0;a<=2;a+=1)
            {  
                for (b=0;b<=3;b+=1)
                {                
                    switch(sl)
                    {
                    case 1: ini_write_real("Inventory","SaveSlot_Inventory_1["+string(a)+","+string(b)+"]",global.SaveSlot_Inventory_1[a,b]); break;
                    case 2: ini_write_real("Inventory","SaveSlot_Inventory_2["+string(a)+","+string(b)+"]",global.SaveSlot_Inventory_2[a,b]); break;
                    case 3: ini_write_real("Inventory","SaveSlot_Inventory_3["+string(a)+","+string(b)+"]",global.SaveSlot_Inventory_3[a,b]); break;
                    case 4: ini_write_real("Inventory","SaveSlot_Inventory_4["+string(a)+","+string(b)+"]",global.SaveSlot_Inventory_4[a,b]); break;
                    case 5: ini_write_real("Inventory","SaveSlot_Inventory_5["+string(a)+","+string(b)+"]",global.SaveSlot_Inventory_5[a,b]); break;
                    case 6: ini_write_real("Inventory","SaveSlot_Inventory_6["+string(a)+","+string(b)+"]",global.SaveSlot_Inventory_6[a,b]); break;
                    case 7: ini_write_real("Inventory","SaveSlot_Inventory_7["+string(a)+","+string(b)+"]",global.SaveSlot_Inventory_7[a,b]); break;
                    case 8: ini_write_real("Inventory","SaveSlot_Inventory_8["+string(a)+","+string(b)+"]",global.SaveSlot_Inventory_8[a,b]); break;
                    }
                }
            }                
            ini_write_real("Weapon","SaveSlot_weapon_A"+"["+string(sl)+"]",global.SaveSlot_weapon_A[sl]);
            ini_write_real("Weapon","SaveSlot_weapon_B"+"["+string(sl)+"]",global.SaveSlot_weapon_B[sl]);
            ini_write_real("Weapon","SaveSlot_weapon_C"+"["+string(sl)+"]",global.SaveSlot_weapon_C[sl]);
            ini_write_real("Weapon","SaveSlot_weapon_D"+"["+string(sl)+"]",global.SaveSlot_weapon_D[sl]);      
            ini_write_real("Weapon","SaveSlot_weapon_A_energy"+"["+string(sl)+"]",global.SaveSlot_weapon_A_energy[sl]);
            ini_write_real("Weapon","SaveSlot_weapon_B_energy"+"["+string(sl)+"]",global.SaveSlot_weapon_B_energy[sl]);
            ini_write_real("Weapon","SaveSlot_weapon_C_energy"+"["+string(sl)+"]",global.SaveSlot_weapon_C_energy[sl]);
            ini_write_real("Weapon","SaveSlot_weapon_D_energy"+"["+string(sl)+"]",global.SaveSlot_weapon_D_energy[sl]);       
            ini_write_real("Time","SaveSlot_hours"+"["+string(sl)+"]",global.SaveSlot_Hours[sl]);
            ini_write_real("Time","SaveSlot_minutes"+"["+string(sl)+"]",global.SaveSlot_Minutes[sl]);
            ini_write_real("Time","SaveSlot_seconds"+"["+string(sl)+"]",global.SaveSlot_Seconds[sl]);   
            
            ini_write_real("Time","SaveSlot_ranked_minutes"+"["+string(sl)+"]",global.SaveSlot_ranked_Minutes[sl]);
            ini_write_real("Time","SaveSlot_ranked_seconds"+"["+string(sl)+"]",global.SaveSlot_ranked_Seconds[sl]); 
                 
            ini_write_real("Game","SaveSlot_points"+"["+string(sl)+"]",global.SaveSlot_Points[sl]);       
            
            var i
            for (i=0;i<5;i+=1)
                {
                ini_write_real("Inventory","SaveSlot_pets["+string(sl)+","+string(i)+"]",global.SaveSlot_pets[sl,i]);
                }        
            
            ini_write_real("Hero","SaveSlot_type"+"["+string(sl)+"]",global.SaveSlot_HERO_type[sl]);
            ini_write_real("Game","SaveSlot_world"+"["+string(sl)+"]",global.SaveSlot_World[sl]); //WORLD LEVEL         
            
            for (a=1;a<=14;a+=1) //BOSS SCORES
            {  
                for (b=1;b<=3;b+=1)
                {
                    switch(sl)
                    {
                    case 1: ini_write_real("Boss","SaveSlot_Boss_Score_1["+string(a)+","+string(b)+"]",global.SaveSlot_Boss_Score_1[a,b]); break;
                    case 2: ini_write_real("Boss","SaveSlot_Boss_Score_2["+string(a)+","+string(b)+"]",global.SaveSlot_Boss_Score_2[a,b]); break;
                    case 3: ini_write_real("Boss","SaveSlot_Boss_Score_3["+string(a)+","+string(b)+"]",global.SaveSlot_Boss_Score_3[a,b]); break;
                    case 4: ini_write_real("Boss","SaveSlot_Boss_Score_4["+string(a)+","+string(b)+"]",global.SaveSlot_Boss_Score_4[a,b]); break;
                    case 5: ini_write_real("Boss","SaveSlot_Boss_Score_5["+string(a)+","+string(b)+"]",global.SaveSlot_Boss_Score_5[a,b]); break;
                    case 6: ini_write_real("Boss","SaveSlot_Boss_Score_6["+string(a)+","+string(b)+"]",global.SaveSlot_Boss_Score_6[a,b]); break;
                    case 7: ini_write_real("Boss","SaveSlot_Boss_Score_7["+string(a)+","+string(b)+"]",global.SaveSlot_Boss_Score_7[a,b]); break;
                    case 8: ini_write_real("Boss","SaveSlot_Boss_Score_8["+string(a)+","+string(b)+"]",global.SaveSlot_Boss_Score_8[a,b]); break;
                    }
                }
            }
            
            //WORLDS BEATEN
            for (c=0;c<=14;c+=1)
                {
                ini_write_real("Game","SaveSlot_world_clear["+string(sl)+","+string(c)+"]",global.SaveSlot_world_clear[sl,c]);
                } 
                   
            ini_write_real("Game","SaveSlot_difficulty"+"["+string(sl)+"]",global.SaveSlot_difficulty[sl]);
            ini_write_real("Game","SaveSlot_ranked"+"["+string(sl)+"]",global.SaveSlot_ranked[sl]);
            ini_write_real("Game","SaveSlot_worldmap"+"["+string(sl)+"]",global.SaveSlot_worldmap[sl]);
            
        }
        //******************** DATA END ************************//
                        
    var inistring = ini_close();
    
    buffer_write(global.savebuff,buffer_string,inistring);        
    buffer_save_async(global.savebuff,"savefile.sav",0,buffer_get_size(global.savebuff));    // Pass the data to be saved                 
    global.saveid = buffer_async_group_end();     // Start the save process
    global.saving=true;
    
    }//END CHECK LOADING SAVING
}

//---------------------------------------------------------
//----------------- NORMAL SAVE ---------------------------
//---------------------------------------------------------


if (global.platform==0) ||  (global.platform==1) //PC AND XBOX
{    
    if (global.platform==1)
    {
        if (xboxone_get_savedata_user() != global.xb_user)
        {
            xboxone_set_savedata_user(global.xb_user);
        }
    }
    
    var SaveFile
    var directory;

    switch(global.platform)
    {
    case 0: directory="SaveGame\"; break; //PC
    case 1: directory="SaveGame\"; break; //XBOXONE
    }
        switch(global.slot)
        {
        case 1: SaveFile = directory+"Save_A.sav"; break;
        case 2: SaveFile = directory+"Save_B.sav"; break;
        case 3: SaveFile = directory+"Save_C.sav"; break;
        case 4: SaveFile = directory+"Save_D.sav"; break;
        case 5: SaveFile = directory+"Save_E.sav"; break;
        case 6: SaveFile = directory+"Save_F.sav"; break;
        case 7: SaveFile = directory+"Save_G.sav"; break;
        case 8: SaveFile = directory+"Save_H.sav"; break;
        }

        ini_open(SaveFile);
            
        ini_write_string("Info","date", date_date_string(date_current_datetime()));
        ini_write_string("Info","name", global.name);
        
                
        if (global.ranked==true) && (global.SavedHP<=0)
        {
            //DO NOTHING KEEP LAST SAVED ROOM
        }
        else
        {
            //UPDATE CURRENT SAVE SLOT BEFORE SAVING    
            if instance_exists(obj_CheckPoint) || instance_exists(obj_CheckPoint_Boss) || instance_exists(obj_Tube_Glass)
            global.SavedRoom = room; //ROOM FROM CHECK POINT
        }
                
        ini_write_real("Game","SavedRoom",global.SavedRoom); //ROOM ID
                
        ini_write_real("Hero","SavedHP",global.SavedHP);
        ini_write_real("Hero","SavedMoney",global.SavedMoney);
        
        var a;
        var b;
        
        for (a=0;a<=2;a+=1)
        {  
            for (b=0;b<=3;b+=1)
            {
            ini_write_real("Inventory","Inventory["+string(a)+","+string(b)+"]",global.Inventory[a,b]);
            }
        }
                
        ini_write_real("Weapon","weapon_A",global.weapon_A);
        ini_write_real("Weapon","weapon_B",global.weapon_B);
        ini_write_real("Weapon","weapon_C",global.weapon_C);
        ini_write_real("Weapon","weapon_D",global.weapon_D);
        
        ini_write_real("Weapon","weapon_A_energy",global.weapon_A_energy);
        ini_write_real("Weapon","weapon_B_energy",global.weapon_B_energy);
        ini_write_real("Weapon","weapon_C_energy",global.weapon_C_energy);
        ini_write_real("Weapon","weapon_D_energy",global.weapon_D_energy);
        
        ini_write_real("Time","hours",global.Hours);
        ini_write_real("Time","minutes",global.Minutes);
        ini_write_real("Time","seconds",global.Seconds);
        
        ini_write_real("Time","ranked_minutes",global.ranked_Minutes);
        ini_write_real("Time","ranked_seconds",global.ranked_Seconds);
        
        ini_write_real("Game","points",global.Points);
        
        var i
        
        for (i=0;i<5;i+=1)
        {
            ini_write_real("Inventory","pets["+string(i)+"]",global.pets[i]);
        }
        
        ini_write_real("Hero","type",global.HERO_type);
        ini_write_real("Game","world",global.World); //WORLD LEVEL 
        
        for (a=1;a<=14;a+=1) //BOSS SCORES
        {  
            for (b=1;b<=3;b+=1)
            {
            ini_write_real("Boss","Boss_Score["+string(a)+","+string(b)+"]",global.Boss_Score[a,b]);
            }
        }
        
        var c;
        
        for (c=0;c<=14;c+=1) //WORLDS BEATEN
        {
        ini_write_real("Game","world_clear["+string(c)+"]",global.world_clear[c]);
        }
        
        ini_write_real("Game","difficulty",global.difficulty);
        ini_write_real("Game","ranked",global.ranked);
        ini_write_real("Game","worldmap",global.worldmap);
        
        
    ini_close();
    
}  
 
//RANKING LEADERBOARDS -----------------------------

if (global.ranked==true)
{
if (global.platform==1) //XBOXONE
    {
    scr_XboxOne_Achievement(21); // Submit Hardcore Score
    }
    
if (global.platform==3) //PS4
    {
    scr_PS4_Trophies(21); // Submit Hardcore Score
    }       
}

//XBOX HERO STATS
if (global.platform==1)
{
scr_XboxOne_Achievement(23); 

}

