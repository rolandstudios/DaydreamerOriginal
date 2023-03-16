//---------------------------------------------------------------------------
//---- ASYNC LOADING --------------------------------------------------------
//---------------------------------------------------------------------------

if (global.platform==3) //PS4 ONLY
{             
    //DO NOTHING    
}

//---------------------------------------------------------------------------
//---- NORMAL LOADING -------------------------------------------------------
//---------------------------------------------------------------------------

if (global.platform==0) || (global.platform==1) //PC AND XBOX ONLY
{
if instance_exists(obj_SaveSelect)
{
    if (global.platform==1)
    {
        if (xboxone_get_savedata_user() != global.xb_user) && (global.xb_user!=pointer_null)
        {
        xboxone_set_savedata_user(global.xb_user);
        }
    }
with(obj_SaveSelect)
{
    var directory;
    switch(global.platform)
    {
    case 0: directory="SaveGame\"; break; //PC
    case 1: directory="SaveGame\"; break; //XBOXONE
    case 2: directory="Saves\"; break; //PS4 NON ASYNC SAVE
    case 3: directory="Saves\"; break; //PS4 NON ASYNC SAVE
    }

    var m;
    var file;

for (a=1;a<9;a+=1)
    {
        switch(a)
        {
        case 1: file="Save_A.sav"; break;
        case 2: file="Save_B.sav"; break;
        case 3: file="Save_C.sav"; break;
        case 4: file="Save_D.sav"; break;
        case 5: file="Save_E.sav"; break;
        case 6: file="Save_F.sav"; break;
        case 7: file="Save_G.sav"; break;
        case 8: file="Save_H.sav"; break;
        }
        
    if file_exists(directory+file)
        {
            ini_open(directory+file);             
            player_date[a] =  ini_read_string("Info","date","- EMPTY -");  //Load Date            
            player_name[a] =  ini_read_string("Info","name",""); //Load Name            
            player_room[a] =  ini_read_real("Game","SavedRoom", 0); //Load Room                      
            player_Hours[a] = ini_read_real("Time","hours",0);
            player_Minutes[a] = ini_read_real("Time","minutes",0);
            player_Seconds[a] = ini_read_real("Time","seconds",0);
            player_Score[a] =ini_read_real("Game","points",0); //Points  
            player_hp[a] = ini_read_real("Hero","SavedHP",0); //HP 
            player_ranked[a] = ini_read_real("Game","ranked",false); //Points          
            ini_close();                          
        }
    } //END LOOP
} //END WITH STATEMENT
}//END SAVE SELECT OBJECT EXISTS
} //END CHECK XBOX AND PC PLATFORM
