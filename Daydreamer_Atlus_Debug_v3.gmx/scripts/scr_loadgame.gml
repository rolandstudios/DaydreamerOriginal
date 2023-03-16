//---------------------------------------------------------------------------
//---- ASYNC LOADING --------------------------------------------------------
//---------------------------------------------------------------------------

//audio_play_sound(snd_Quack_A,10,false);
if (global.platform==3) //PS4 ONLY
{     
    if (global.saving || global.loading) exit;
    
    if (global.saving==false) && (global.loading==false) //CHECK SAVING AND LOADING
    {
    show_debug_message("ASYNC Load Requesting File  ["+global.SaveFile+"]");
    
    //globalvar loadbuff;
    global.loadbuff = buffer_create(1,buffer_grow,1);
    
    buffer_async_group_begin("saves");    // save folder 
    buffer_async_group_option("showdialog",0);
    buffer_async_group_option("savepadindex", 0);
    buffer_async_group_option("slottitle","Daydreamer");    // don't show any dialogues, load from slot 0 
                               
    buffer_load_async(global.loadbuff,"savefile.sav",0,-1);   // Say what we want to load and into which buffer  
      
    global.loadid = buffer_async_group_end();   // Actually start loading now please
    global.loading=true;    
    }//END CHECK
}   


//---------------------------------------------------------------------------
//---- NORMAL LOADING -------------------------------------------------------
//---------------------------------------------------------------------------

if (global.platform==0) ||  (global.platform==1)  //PC AND XBOX
{  
    if (global.platform==1)
    {
        if (xboxone_get_savedata_user() != global.xb_user) && (global.xb_user!=pointer_null)
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
                
        global.name    =     ini_read_string("Info","name",global.name);  
        global.SavedRoom  =  ini_read_real("Game","SavedRoom", global.SavedRoom);                             
        global.SavedHP =     ini_read_real("Hero","SavedHP",100);
        global.SavedMoney =  ini_read_real("Hero","SavedMoney",0);
                
        for (a=0;a<=2;a+=1)
        {  
            for (b=0;b<=3;b+=1)
            {
            global.Inventory[a,b] =  ini_read_real("Inventory","Inventory["+string(a)+","+string(b)+"]",0);
            }
        }
                
        global.weapon_A =  ini_read_real("Weapon","weapon_A",0);
        global.weapon_B =  ini_read_real("Weapon","weapon_B",0);
        global.weapon_C =  ini_read_real("Weapon","weapon_C",0);
        global.weapon_D =  ini_read_real("Weapon","weapon_D",0);
        
        global.weapon_A_energy =  ini_read_real("Weapon","weapon_A_energy",0);
        global.weapon_B_energy =  ini_read_real("Weapon","weapon_B_energy",0);
        global.weapon_C_energy =  ini_read_real("Weapon","weapon_C_energy",0);
        global.weapon_D_energy =  ini_read_real("Weapon","weapon_D_energy",0);
                
        global.Hours =    ini_read_real("Time","hours",0);
        global.Minutes =  ini_read_real("Time","minutes",0);
        global.Seconds =  ini_read_real("Time","seconds",0);
        
        global.ranked_Minutes =  ini_read_real("Time","ranked_minutes",10);
        global.ranked_Seconds =  ini_read_real("Time","ranked_seconds",0);
        
        global.Points =    ini_read_real("Game","points",0);
                
        var i
        for (i=0;i<5;i+=1)
        {
            global.pets[i] =  ini_read_real("Inventory","pets["+string(i)+"]",0);
        }
        
        global.HERO_type = ini_read_real("Hero","type",0);
        global.World = ini_read_real("Game","world",global.World); //CURRENT WORLD LEVEL
               
        for (a=1;a<=14;a+=1)
        {  
            for (b=1;b<=3;b+=1)
            {
            global.Boss_Score[a,b] = ini_read_real("Boss","Boss_Score["+string(a)+","+string(b)+"]",0);
            }
        }
        
        for (c=0;c<=14;c+=1) 
        {
        global.world_clear[c] = ini_read_real("Game","world_clear["+string(c)+"]",0);
        }
        
        global.difficulty = ini_read_real("Game","difficulty",.75);
        global.ranked = ini_read_real("Game","ranked",false);
        global.worldmap = ini_read_real("Game","worldmap",false);
        
        ini_close();
            
            global.creation=true;
            global.Trippy=false;
            global.CutScene=false;
            global.Parallax=true;
            global.VParallax=false;

             if (global.worldmap==true)
             {
             room_goto(rm_WorldMap);  
             }
             else
             {
                if (global.stageselect==false) 
                {                                                          
                    room_goto(global.SavedRoom);                 
                }
                else
                {
                    room_goto(rm_WorldMap);
                }
            }
                        
                      
}    

//---------------------------------------------------------------------------
//---- NO SAVE ------ -------------------------------------------------------
//---------------------------------------------------------------------------

if (global.platform==4) //NO SAVE CONSOLE
{
            global.creation=true;
            global.Trippy=false;
            global.CutScene=false;
            global.Parallax=true;
            global.VParallax=false;

            if (global.stageselect==false) 
            {                                                          
                 room_goto(rm_WorldMap);                 
            }
            else
            {
                room_goto(rm_WorldMap);
            }
}



