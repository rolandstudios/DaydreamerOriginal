if (global.platform==1) 
    {
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
        ini_write_real("Game","difficulty",global.difficulty);
        ini_close();
    }
